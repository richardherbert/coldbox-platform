<!-----------------------------------------------------------------------
********************************************************************************
Copyright 2005-2009 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.coldbox.org | www.luismajano.com | www.ortussolutions.com
********************************************************************************

Author      :	Luis Majano
Date        :	3/13/2009
Description :
	The log levels enum
----------------------------------------------------------------------->
<cfcomponent name="LogLevels" hint="The available log levels in LogBox" output="false">
<cfscript>
	// All Available Logging Levels for LogBox
	this.DEBUG = 4;
	this.INFO = 3;
	this.WARN = 2;
	this.ERROR = 1;
	this.FATAL = 0;
	this.OFF = -1;
	
	// List of valid levels
	this.VALIDLEVELS = "off,trace,debug,info,warn,error,fatal";
	
	// Max
	this.MINLEVEL = -1;
	this.MAXLEVEL = 4;
	
	function lookup(level){
		switch(level){
			case -1: return "OFF";
			case 0: return "FATAL";
			case 1: return "ERROR";
			case 2: return "WARN";
			case 3: return "INFO";
			case 4: return "DEBUG";		
		}
	}
	function lookupAsInt(level){
		switch(level){
			case "OFF": return -1;
			case "FATAL": return 0;
			case "ERROR": return 1;
			case "WARN": return 2;
			case "WARNING" : return 2;
			case "INFO": return 3;
			case "INFORMATION" : return 3;
			case "DEBUG": return 4;	
			default: return 999;	
		}
	}
	function lookupCF(level){
		switch(level){
			case -1: return "OFF";
			case 0: return "Fatal";
			case 1: return "Error";
			case 2: return "Warning";
			case 3: return "Information";
			case 4: return "Information";		
		}
	}
	
	function isLevelValid(level){
		return ( arguments.level gte this.MINLEVEL OR arguments.level lte this.MAXLEVEL );
	}

</cfscript>
</cfcomponent>