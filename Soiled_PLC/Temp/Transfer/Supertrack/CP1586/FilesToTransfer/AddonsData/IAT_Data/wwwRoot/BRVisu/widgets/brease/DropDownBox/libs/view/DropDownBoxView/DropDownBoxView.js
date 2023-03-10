define([
    'widgets/brease/common/libs/redux/view/ListView/ListView',
    'widgets/brease/common/libs/redux/view/ItemView/ItemView',
    'widgets/brease/DropDownBox/libs/reducer/DropDownBoxActions',
    'brease/enum/Enum',
    'brease/core/Utils',
    'brease/events/BreaseEvent',
    'brease/controller/PopUpManager'
], function (ListView, ItemView, DropDownBoxActions, Enum, Utils, BreaseEvent, popupManager) {
    /**
    * @class widgets.brease.DropDownBox.libs.view.DropDownBoxView 
    */
    'use strict';
    var DropDownBoxView = function (store, parent, widget) {
        this.el = parent;
        this.elem = this.el.get(0);
        this.store = store;
        this.widget = widget;
        this.render();

    };

    var p = DropDownBoxView.prototype;
    p.render = function render() {
        this.dispose();

        this.el.addClass('breaseDropDownBox DropDownBoxView');
        var state = this.store.getState();

        if (state.status.visible && state.status.active) {

            var actualItem = state.items.itemList[state.items.selectedIndex],
                selectedText = actualItem === undefined ? undefined : state.text.textElements[actualItem.textId],
                selectedImage = actualItem === undefined ? undefined : state.image.imageElements[actualItem.imageId];

            var itemProps = {
                imageIndicator: {
                    showImage: true
                },
                text: {
                    text: selectedText === undefined ? '' : selectedText.displayText,
                    textSettings: state.text.textSettings,
                    showText: state.items.listSettings.showTextsInButton
                },
                image: {
                    image: selectedImage === undefined ? undefined : selectedImage.imagePath,
                    showImage: state.items.listSettings.showImagesInButton
                },
                itemSettings: {
                    itemHeight: '100%',
                    imageAlign: state.items.itemSettings.imageAlign
                },
                status: {
                    enabled: state.status.enabled,
                    visible: state.status.visible,
                    selected: state.items.listOpen,
                    lastItem: true
                },
                offline: state.items.offline,
                onClick: _updateListStatus.bind(this)
            };
            this.itemView = new ItemView(itemProps, this.el);

            if (state.items.listOpen) {
                this.listContainer = $("<div id='" + this.elem.id + "_listBoxWrapper' class='listBoxContainer " + state.style.styleToApply + "'></div>");
                this.arrow = $("<div class='arrow'></div>");
                this.listContainer.append(this.arrow);
                brease.bodyEl.append(this.listContainer);
                var borderCorrection = _getBorderFromList(this.listContainer),
                    scaleFactor = Utils.getScaleFactor(this.elem),
                    buttonSize = { height: this.elem.offsetHeight, width: this.elem.offsetWidth },
                    limits = this.getLimits(state.items.listSettings.cropToParent, this.el, brease.appView, brease.bodyEl),
                    dropDownRect = this.elem.getBoundingClientRect(),
                    listRect = {
                        height: state.items.listSettings.listHeight + borderCorrection,
                        width: state.items.listSettings.listWidth
                    },
                    location = this.getLocation(
                        state.items.listSettings.listPosition,
                        listRect,
                        dropDownRect,
                        limits,
                        scaleFactor);
                this._listContainerSizePos(this.listContainer, location, scaleFactor);
                _layoutArrowList(this.el, this.listContainer, this.arrow, state.items.listSettings.listPosition, buttonSize, location.width, scaleFactor);
                //Override listSettings
                var listProps = {
                    status: state.status,
                    items: state.items,
                    text: state.text,
                    image: state.image,
                    onClick: (function (store, widget, element) {
                        return function (index, originalEvent) {
                            _dispatchSelectedItem(store, index, widget, originalEvent, element);
                            originalEvent.preventDefault();
                        };
                    })(this.store, this.widget, this.elem)
                };
                this.listView = new ListView(listProps, this.listContainer);
                this.closeOnMouseDownBound = _closeListOnMouseDown.bind(this);
                this.closeOnWheelBound = _closeListOnWheel.bind(this);
                brease.bodyEl.on(BreaseEvent.MOUSE_DOWN, this.closeOnMouseDownBound);
                brease.bodyEl.on('wheel', this.closeOnWheelBound);
            }
        }
    };

    p.dispose = function dispose() {
        if (this.listView !== undefined) {
            this.listView.dispose();
        }
        if (this.itemView !== undefined) {
            this.itemView.dispose();
        }
        if (this.arrow !== undefined) {
            this.arrow.remove();
        }
        if (this.listContainer !== undefined) {
            this.listContainer.remove();
        }
        if (this.closeOnMouseDownBound !== undefined) {
            brease.bodyEl.off(BreaseEvent.MOUSE_DOWN, this.closeOnMouseDownBound);
        }
        if (this.closeOnWheelBound !== undefined) {
            brease.bodyEl.off('wheel', this.closeOnWheelBound);
        }
        if (this.closeOnMouseMoveBound !== undefined) {
            brease.bodyEl.off(BreaseEvent.MOUSE_MOVE, this.closeOnMouseMoveBound);
        }
    };

    function _dispatchSelectedItem(store, index, widget, originalEvent, element) {
        if (!element) {
            return;
        }
        //Trigger the widget _clickHandler in order to have the Click event from BaseWidget
        var coordinates = element.getBoundingClientRect();
        originalEvent.clientX = coordinates.left;
        originalEvent.clientY = coordinates.top;
        // eslint-disable-next-line no-useless-call
        widget._clickHandler.call(widget, originalEvent);
        if (store.getState().status.enabled) {
            var action = DropDownBoxActions.updateSelectedItem(index);
            store.dispatch(action);
            //Store AS with the new values
            widget.valueChangeFromUI();
        }
    }

    function _updateListStatus(event) {
        //Save the actual timeStamp to avoid inmediate close of the list
        this.openEventTimeStamp = event.timeStamp;
        if (this.store.getState().status.enabled) {
            var action = DropDownBoxActions.toggleListStatus();
            this.store.dispatch(action);
            this.widget.triggerToggleStateChanged();
        }
    }

    function _closeListOnMouseDown(event) {
        //If the event is different from the open event and it is not comming
        // from an element of the widget itself -> close list
        if (this.openEventTimeStamp !== event.timeStamp && !$.contains(this.listContainer.find('.ListView')[0], event.target) &&
            !$.contains(this.elem, event.target)) {
            _closeList(this.store, this.widget);
        } else if ($.contains(this.elem, event.target)) {
            this.closeOnMouseMoveBound = _closeOnMouseMove.bind(this);
            brease.bodyEl.on(BreaseEvent.MOUSE_MOVE, this.closeOnMouseMoveBound);
        }
    }

    function _closeOnMouseMove(event) {
        _closeList(this.store, this.widget);
    }

    function _closeListOnWheel(event) {
        if (!$.contains(this.listContainer.find('.ListView')[0], event.target)) {
            _closeList(this.store, this.widget);
        }
    }

    function _closeList(store, widget) {
        var action = DropDownBoxActions.closeList();
        store.dispatch(action);
        widget.triggerToggleStateChanged();
    }

    p._listContainerSizePos = function (container, position, scaleFactor) {
        container.css({
            'position': 'fixed',
            'height': position.height,
            'width': position.width,
            'top': position.top,
            'left': position.left,
            'z-index': position.zIndex,
            'transform': 'scale(' + scaleFactor + ',' + scaleFactor + ')',
            'transform-origin': '0px 0px 0px'
        });

    };

    function _layoutArrowList($elem, container, arrow, listPosition, ItemSize, listWidth, scaleFactor) {
        switch (listPosition) {
            case Enum.Position.bottom:
                container.addClass('bottom');
                arrow.addClass('bottom');
                arrow.css('margin-left', listWidth / 2 - 8);
                break;
            case Enum.Position.top:
                container.addClass('top');
                arrow.addClass('top');
                arrow.css('margin-left', listWidth / 2 - 8);
                break;
            case Enum.Position.left:
                container.addClass('left');
                arrow.addClass('left');
                arrow.css('margin-top', (($elem.offset().top - arrow.offset().top) / scaleFactor + ItemSize.height / 2 - 8));
                break;
            case Enum.Position.right:
                container.addClass('right');
                arrow.addClass('right');
                arrow.css('margin-top', (($elem.offset().top - arrow.offset().top) / scaleFactor + ItemSize.height / 2 - 8));
                break;
            case Enum.Position.center:
                container.addClass('center');
                arrow.addClass('center');
                break;
            case Enum.Position.middle:
                container.addClass('right');
                arrow.addClass('middle');
                break;
        }
    }

    function _getBorderFromList(listContainer) {
        var dummyDiv = $('<div class="ListView Container"></div>');
        listContainer.append(dummyDiv);
        var topBorder = Utils.roundTo(parseFloat(dummyDiv.css('border-top-width')), 0),
            bottomBorder = Utils.roundTo(parseFloat(dummyDiv.css('border-bottom-width')), 0),
            sumBorder = topBorder + bottomBorder;
        dummyDiv.remove();
        return sumBorder;
    }
    /**
    * @method getLocation
    * Used to retrieve the location for the ListBox
    * @param {brease.enum.Position} listPosition
    * @param {Object} listRect
    * @param {Number} listRect.width
    * @param {Number} listRect.height
    * @param {DOMRect} targetRect
    * @param {DOMRect} limits
    * @param {Number} scaleFactor
    * @return {Object} 
    * @return {Number} return.top
    * @return {Number} return.left
    * @return {Number} return.width
    * @return {Number} return.height
    * @return {Integer} return.zIndex
    */
    p.getLocation = function getLocation(listPosition, listRect, targetRect, limits, scaleFactor) {
        var location = {
                top: 0,
                left: 0,
                width: listRect.width,
                height: listRect.height
            },
            arrowSize = 8;
        switch (listPosition) {
            case Enum.Position.bottom:
                location.height += arrowSize;
                location.top = targetRect.bottom;
                location.left = targetRect.left + (targetRect.width - listRect.width * scaleFactor) / 2;
                break;
            case Enum.Position.top:
                location.height += arrowSize;
                location.top = targetRect.top - (listRect.height + arrowSize) * scaleFactor;
                location.left = targetRect.left + (targetRect.width - listRect.width * scaleFactor) / 2;
                break;
            case Enum.Position.left:
                location.top = targetRect.top;
                location.left = targetRect.left - listRect.width * scaleFactor;
                break;
            case Enum.Position.right:
                location.top = targetRect.top;
                location.left = targetRect.right;
                break;
            case Enum.Position.center:
                location.top = targetRect.top;
                location.left = targetRect.left + (targetRect.width - listRect.width * scaleFactor) / 2;
                break;
            case Enum.Position.middle:
                location.top = targetRect.top + (targetRect.height - listRect.height * scaleFactor) / 2;
                location.left = targetRect.left + (targetRect.width - listRect.width * scaleFactor) / 2;
                break;
        }
        _ensureLimits(location, limits, scaleFactor, listPosition);
        location.zIndex = popupManager.getHighestZindex() + 1;
        return location;
    };
    /**
    * @method getLimits
    * Used to retrieve the limits for the location of the ListBox
    * @param {brease.enum.CropToParent} cropToParent
    * @param {jQuery} el jquery reference to the element which contains the list
    * @param {jQuery} appView jquery reference to the appcontainer
    * @param {jQuery} bodyEl jquery reference to the body element
    * @return {DOMRect}
    */
    p.getLimits = function (cropToParent, el, appView, bodyEl) {
        var limits = {
                top: 0,
                right: 0,
                bottom: 0,
                left: 0,
                width: 0,
                height: 0
            },
            appRect = appView.get(0).getBoundingClientRect(),
            viewportRect = _toAbsoluteRect(bodyEl.get(0).getBoundingClientRect()),
            dialogRect = _getDialogRect(el.get(0)),
            parentRect = el.parent().get(0).getBoundingClientRect(),
            isInDialog = dialogRect !== null;
        switch (cropToParent) {
            case Enum.CropToParent.height:
            case Enum.CropToParent.both:
                limits.top = parentRect.top;
                limits.right = isInDialog ? viewportRect.right : appRect.right;
                limits.bottom = parentRect.bottom;
                limits.left = appRect.left;
                break;
            default: // none
                limits.top = appRect.top;
                limits.right = isInDialog ? viewportRect.right : appRect.right;
                limits.bottom = isInDialog ? viewportRect.bottom : appRect.bottom;
                limits.left = appRect.left;
        }
        // adjust to viewport
        limits.top = Math.max(viewportRect.top, limits.top);
        limits.right = Math.min(viewportRect.right, limits.right);
        limits.bottom = Math.min(viewportRect.bottom, limits.bottom);
        limits.left = Math.max(viewportRect.left, limits.left);

        limits.width = limits.right - limits.left;
        limits.height = limits.bottom - limits.top;
        return limits;
    };
    // AuP 666055: fix listView position, if DropDownBox is inside DialogWindow or GenericDialog
    function _getDialogRect(elem) {
        var dialogElem = Utils.getClosestDialogElem(elem);
        if (dialogElem) {
            return dialogElem.getBoundingClientRect();
        }
        return dialogElem;
    }
    function _ensureLimits(location, limits, scaleFactor, listPosition) {
        if (location.top < limits.top) {
            if (listPosition === Enum.Position.top || listPosition === Enum.Position.middle) {
                location.height -= Math.abs(location.top - limits.top) / scaleFactor;
            }
            location.top = limits.top;
        }
        if (location.top + location.height * scaleFactor > limits.top + limits.height) {
            location.height -= (location.top + location.height * scaleFactor - limits.top - limits.height) / scaleFactor;
        }
        // AuP 630115 list should be moved to the left instead of decreasing the width
        if (location.left < limits.left) {
            location.left = limits.left;
        }

        if (location.left + location.width * scaleFactor > limits.right) {
            location.left = Math.max(limits.right - location.width * scaleFactor, 0);
        }
    }
    // ignore scroll offset
    function _toAbsoluteRect(rect) {
        var absRect = {
            top: rect.top,
            right: rect.right,
            bottom: rect.bottom,
            left: rect.left
        };
        absRect.width = absRect.right - absRect.left;
        absRect.height = absRect.bottom - absRect.top;
        absRect.top = 0;
        absRect.left = 0;
        absRect.bottom = absRect.height;
        absRect.right = absRect.width;
        return absRect;
    }
    return DropDownBoxView;

});
