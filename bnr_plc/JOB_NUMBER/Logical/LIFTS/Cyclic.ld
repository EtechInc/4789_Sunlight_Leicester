PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="r1.rail_mt"/>
			<line/>
			<line/>
			<coil type="set" name="r1.fire_up"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="positive transition" name="r2.arrive"/>
			<line/>
			<line/>
			<coil type="reset" name="r1.fire_up"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="r1.reset"/>
			<line/>
			<line/>
			<coil type="reset" name="r1.fire_up"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="r1.fire_up"/>
			<line/>
			<line/>
			<coil type="open" name="r1.fire_down"/>
		</row>
	</network>
</networks>
END_PROGRAM











