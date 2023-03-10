define([
    'brease/core/BaseWidget', 
    'brease/decorators/LanguageDependency', 
    'brease/enum/Enum', 
    'brease/events/BreaseEvent'
], function (SuperClass, languageDependency, Enum, BreaseEvent) {

    'use strict';

    /**
     * @class widgets.brease.ListWidget
     * #Description
     * Abstract ListWidget to display a list of text
     *   
     * @extends brease.core.BaseWidget
     *
     * @iatMeta studio:visible
     * false
     * @iatMeta category:Category
     * Selector
     * @iatMeta description:short
     * Abstract implementation of a list handling widget
     * @iatMeta description:de
     * Abstraktes Widget zur Anzeige einer textuellen Liste
     * @iatMeta description:en
     * Abstract widget for displaying a textual list
     */

    /**
     * @cfg {UInteger} selectedIndex=0
     * @iatStudioExposed
     * @iatCategory Data
     * @bindable
     * Index of the selected item. The first item has index=0
     */

    /**
     * @cfg {String} selectedValue=''
     * @iatStudioExposed
     * @iatCategory Data
     * @bindable
     * Value of the selected item
     */

    /**
     * @cfg {brease.enum.ImagePosition} imageAlign='left'
     * @iatStudioExposed
     * @iatCategory Appearance
     * Position of images relative to text  
     */

    /**
     * @cfg {DirectoryPath} imagePath=''
     * @iatStudioExposed
     * @iatCategory Appearance
     * Path to the images location (e.g. 'Media/images/').
     * Names of the images must be given like the index in the dataProvider (e.g. 0.png, 1.png, 2.png)
     */

    /**
     * @cfg {Boolean} ellipsis=false
     * @iatStudioExposed
     * @iatCategory Behavior
     * If true, overflow of text is symbolized with an ellipsis. This option has no effect, if wordWrap = true.
     */

    /**
     * @cfg {Boolean} wordWrap=false
     * @iatStudioExposed
     * @iatCategory Behavior
     * If true, text will wrap when necessary.
     */

    /**
     * @cfg {Boolean} multiLine=false
     * @iatStudioExposed
     * @iatCategory Behavior
     * If true, more than one line is possible. Text will wrap when necessary (wordWrap=true) or at line breaks (\n).
     * If false, text will never wrap to the next line. The text continues on the same line.
     */

    /**
     * @cfg {Boolean} submitOnChange=true
     * @iatStudioExposed
     * @iatCategory Behavior
     * If true, a change regarding the selected list item will be sent to the server immediately.
     * If false, sending the value change to server has to be triggered by the user.
     */

    /**
     * @cfg {ItemCollection} dataProvider=[]
     * @iatStudioExposed
     * @bindable
     * @iatCategory Data
     * ItemCollection see Datatype
     *    
     */

    var defaultSettings = {
            ellipsis: false,
            wordWrap: false,
            multiLine: false,
            submitOnChange: true,
            selectedIndex: 0,
            selectedValue: '',
            imageAlign: Enum.ImageAlign.left,
            imagePath: '',
            dataProvider: []
        },

        WidgetClass = SuperClass.extend(function ListWidget() {
            SuperClass.apply(this, arguments);
        }, defaultSettings),

        p = WidgetClass.prototype;

    p.init = function () {
        SuperClass.prototype.init.call(this);
    };

    p.langChangeHandler = function () {
        // To be overwritten
    };

    /**
     * @method setDataProvider
     * Sets dataProvider
     * @iatStudioExposed
     * @param {ItemCollection} provider
     */
    p.setDataProvider = function (provider) {
        if (Array.isArray(provider)) {
            var data = [];
            provider.map(function (item) {
                if (typeof item === 'string') {
                    try {
                        return data.push(JSON.parse(item));
                    } catch (err) {
                        
                    }
                } else if (typeof item === 'object') {
                    data.push(item);
                }
            });

            this.settings.dataProvider = data;
            this.settings.dataProvider = this._updateDataProviderImages(this.settings.imagePath);
        }

        // To be extended, if needed
    };

    /**
     * @method getDataProvider 
     * Returns dataProvider.
     * @return {ItemCollection}
     */
    p.getDataProvider = function () {
        return this.settings.dataProvider;
    };

    /**
     * @method setSelectedValue
     * Sets selectedValue
     * @iatStudioExposed
     * @param {String} value
     */
    p.setSelectedValue = function (value) {
        if (value !== undefined) {
            var dp = this.settings.dataProvider,
                i = 0,
                l = 0,
                index = -1;
            if (dp) {
                for (i = 0, l = dp.length; i < l; i += 1) {
                    if (dp[i].value === value) {
                        index = i;
                        break;
                    }
                }
            }
            if (index > -1) {
                this.setSelectedIndex(index);
            }
        }
    };

    /**
     * @method getSelectedValue 
     * @iatStudioExposed
     * Returns selectedValue.
     * @return {String}
     */
    p.getSelectedValue = function () {
        if (this.settings.dataProvider && this.settings.dataProvider.length > 0) {
            return this.settings.dataProvider[this.settings.selectedIndex].value;
        } else {
            return '';
        }
    };

    /**
     * @method setSelectedIndex
     * @iatStudioExposed
     * Sets selectedIndex
     * @param {UInteger} index
     */
    p.setSelectedIndex = function (index) {
        // To be overwritten by concrete widgets

    };

    /**
     * @method getSelectedIndex 
     * @iatStudioExposed
     * Returns selectedIndex.
     * @return {UInteger}
     */
    p.getSelectedIndex = function () {
        return this.settings.selectedIndex;
    };

    /**
     * @method setMultiLine
     * Sets multiLine
     * @param {Boolean} multiLine
     */
    p.setMultiLine = function (multiLine) {
        if (multiLine !== undefined) {
            this.settings.multiLine = multiLine;
            _setClasses(this);
        }
    };

    /**
     * @method getMultiLine 
     * Returns multiLine.
     * @return {Boolean}
     */
    p.getMultiLine = function () {
        return this.settings.multiLine;
    };

    /**
     * @method setEllipsis
     * Sets ellipsis
     * @param {Boolean} ellipsis
     */
    p.setEllipsis = function (ellipsis) {
        if (ellipsis !== undefined) {
            this.settings.ellipsis = ellipsis;
            _setClasses(this);
        }
    };

    /**
     * @method getEllipsis 
     * Returns ellipsis.
     * @return {Boolean}
     */
    p.getEllipsis = function () {
        return this.settings.ellipsis;
    };

    /**
     * @method setWordWrap
     * Sets wordWrap
     * @param {Boolean} wordWrap
     */
    p.setWordWrap = function (wordWrap) {
        if (wordWrap !== undefined) {
            this.settings.wordWrap = wordWrap;
            _setClasses(this);
        }
    };

    /**
     * @method getWordWrap 
     * Returns wordWrap.
     * @return {Boolean}
     */
    p.getWordWrap = function () {
        return this.settings.wordWrap;
    };

    /**
     * @method setSubmitOnChange
     * Sets submitOnChange
     * @param {Boolean} submitOnChange
     */
    p.setSubmitOnChange = function (submitOnChange) {
        this.settings.submitOnChange = submitOnChange;
    };

    /**
     * @method getSubmitOnChange 
     * Returns submitOnChange.
     * @return {Boolean}
     */
    p.getSubmitOnChange = function () {
        return this.settings.submitOnChange;
    };

    /**
     * @method setImageAlign
     * Sets imageAlign
     * @param {brease.enum.ImageAlign} imageAlign
     */
    p.setImageAlign = function (imageAlign) {
        this.settings.imageAlign = imageAlign;
        //this.showList(this.settings.dataProvider, this.settings);
    };

    /**
     * @method getImageAlign 
     * Returns imageAlign.
     * @return {brease.enum.ImageAlign}
     */
    p.getImageAlign = function () {
        return this.settings.imageAlign;
    };

    /**
     * @method setImagePath
     * Sets imagePath
     * @param {DirectoryPath} imagePath
     */
    p.setImagePath = function (imagePath) {
        this.settings.imagePath = imagePath;
        // Check if imagePath ends with slash
        if (!/\/$/.test(this.settings.imagePath) && this.settings.imagePath !== '') {
            this.settings.imagePath = this.settings.imagePath + '/';
        }
        // To be extended, if needed
    };

    /**
     * @method getImagePath 
     * Returns imagePath.
     * @return {DirectoryPath}
     */
    p.getImagePath = function () {
        return this.settings.imagePath;
    };

    p._listScrollStartHandler = function (e) {
        this.isScrolling = true;
        this.dispatchEvent(new CustomEvent(BreaseEvent.SCROLL_START));
    };

    p._listScrollEndHandler = function (e) {
        if (this.isWheeling) {
            this.isWheeling = false;
            this.isScrolling = false;
        }
        this.dispatchEvent(new CustomEvent(BreaseEvent.SCROLL_END));
    };

    p._listMouseDownHandler = function (e) {
        brease.bodyEl.on(BreaseEvent.MOUSE_UP, this._bind('_listMouseUpHandler'));
    };

    p._mouseWheelHandler = function (e) {
        this.isWheeling = true;
    };

    p._listMouseUpHandler = function (e) {
        brease.bodyEl.off(BreaseEvent.MOUSE_UP, this._bind('_listMouseUpHandler'));
        if (!$.contains(this.elem, e.target)) {
            this.isScrolling = false;
        }
    };

    p._listClickHandler = function (e) {
        this._handleEvent(e, true);
        if (this.isDisabled) {
            return;
        }
        var target = $(e.target).closest('li');

        if (target.length < 1) {
            return;
        }

        if (this.settings.deferedSelection && !target.is(this.currentSelected)) {
            this.currentSelected.removeClass('selected');
            target.addClass('selected');
            this.currentSelected = target;
            this.settings.selectedIndex = target.index();
            return;
        } else if (!this.settings.deferedSelection && target.is(this.currentSelected)) {
            this.dispatchEvent(new CustomEvent(BreaseEvent.CHANGE));
            return;

        }
        if (this.currentSelected) {
            this.currentSelected.removeClass('selected');
        }
        target.addClass('selected');
        this.currentSelected = target;
        if (target.index() === -1) {
            return;
        }
        this.settings.selectedIndex = target.index();

        var item = this.settings.dataProvider[target.index()];

        var detail = {
            value: item.value,
            text: (item.isKey) ? brease.language.getTextByKey(item.key) : item.text,
            image: item.image,
            selectedIndex: this.getSelectedIndex()
        };
        this.dispatchEvent(new CustomEvent(BreaseEvent.CHANGE, { detail: detail }));
        this.sendValueChange({
            selectedIndex: this.getSelectedIndex(),
            selectedValue: this.getSelectedValue()
        });
        SuperClass.prototype._clickHandler.call(this, e);
    };

    p._refreshScroller = function () {
        var widget = this,
            selectedItem;

        var target = $(this.el.find('li')[this.settings.selectedIndex]);
        if (target && target.length > 0) {
            if (this.currentSelected) {
                this.currentSelected.removeClass('selected');
            }
            target.addClass('selected');
            this.currentSelected = target;
        }

        if (widget.scroller) {
            widget.scroller.refresh();
            selectedItem = document.querySelector('#' + widget.elem.id + ' ul li.selected');
            widget.scroller.scrollToElement(selectedItem);
        }
    };

    /**
     * @method _updateDataProviderImages
     * changes image path of list members
     * @param {DirectoryPath} imagePath
     */
    p._updateDataProviderImages = function (imagePath) {
        var provider = [];
        for (var key in this.settings.dataProvider) {
            if (imagePath === '') {
                provider.push({ value: this.settings.dataProvider[key].value, text: this.settings.dataProvider[key].text, image: '' });
            } else {
                provider.push({ value: this.settings.dataProvider[key].value, text: this.settings.dataProvider[key].text, image: imagePath + key + '.png' });
            }
        }
        this.settings.dataProvider = provider;
        //this.setDataProvider(provider);
        return this.settings.dataProvider;
    };

    /**
     * @method setEnable
     * @iatStudioExposed
     * setter for binding of 'enable'
     * @param {Boolean} value State of 'enable' (false = disabled, true = enabled)
     */
    p.setEnable = function (value) {
        SuperClass.prototype.setEnable.call(this, value);
        // can be extended by concrete widgets
    };

    /**
     * @method setStyle
     * @iatStudioExposed
     * Sets the style
     * @param {StyleReference} value
     */
    p.setStyle = function (value) {
        SuperClass.prototype.setStyle.call(this, value);
        // can be extended by concrete widgets
    };

    p.dispose = function () {
        SuperClass.prototype.dispose.call(this, arguments);
    };

    /**
     * @method submitChange
     * @iatStudioExposed
     * Send value to the server, if binding for this widget exists.  
     * Usage of this method will only make sense, if submitOnChange=false, as otherwise changes are submitted automatically.
     */
    p.submitChange = function () {
        this.sendValueChange({
            selectedIndex: this.getSelectedIndex(),
            selectedValue: this.getSelectedValue()
        });
        this._triggerIndexChangedEvent();
    };

    p._triggerIndexChangedEvent = function () {
        /**
         * @event SelectedIndexChanged
         * @iatStudioExposed
         * Fired when index changes.
         * @param {UInteger} selectedIndex
         * @param {String} selectedValue 
         */
        var ev = this.createEvent('SelectedIndexChanged', {
            selectedIndex: this.getSelectedIndex(),
            selectedValue: this.getSelectedValue()
        });

        if (this.oldSelectedIndex !== this.settings.selectedIndex && ev) {
            ev.dispatch();
        }

        // if event should not get triggered when user triggers action "SubmitChange", then remove this next line
        this.oldSelectedIndex = this.settings.selectedIndex;
    };

    function _setClasses(widget) {
        // To overwrite by concrete widgets
    }

    return languageDependency.decorate(WidgetClass, true);

});
