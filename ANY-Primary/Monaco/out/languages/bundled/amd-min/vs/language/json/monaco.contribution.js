/*! For license information please see monaco.contribution.js.LICENSE.txt */
define("vs/language/json/monaco.contribution",["require","require","vs/editor/editor.api"],(e=>{"use strict";return(()=>{var t,n,o=Object.create,r=Object.defineProperty,s=Object.getOwnPropertyDescriptor,i=Object.getOwnPropertyNames,a=Object.getPrototypeOf,u=Object.prototype.hasOwnProperty,g=(t=function(t){if(typeof e<"u")return e.apply(this,arguments);throw Error('Dynamic require of "'+t+'" is not supported')},typeof e<"u"?e:typeof Proxy<"u"?new Proxy(t,{get:(t,n)=>(typeof e<"u"?e:t)[n]}):t),c=(e,t,n,o)=>{if(t&&"object"==typeof t||"function"==typeof t)for(let a of i(t))!u.call(e,a)&&a!==n&&r(e,a,{get:()=>t[a],enumerable:!(o=s(t,a))||o.enumerable});return e},l=(e,t,n)=>(n=null!=e?o(a(e)):{},c(!t&&e&&e.__esModule?n:r(n,"default",{value:e,enumerable:!0}),e)),d=()=>{return n||(e=n={exports:{}},t=l(g("vs/editor/editor.api")),e.exports=t),n.exports;var e,t},p={};((e,t)=>{for(var n in t)r(e,n,{get:t[n],enumerable:!0})})(p,{getWorker:()=>f,jsonDefaults:()=>h});var m=l(d()),h=new class{constructor(e,t,n){this._onDidChange=new m.Emitter,this._languageId=e,this.setDiagnosticsOptions(t),this.setModeConfiguration(n)}get onDidChange(){return this._onDidChange.event}get languageId(){return this._languageId}get modeConfiguration(){return this._modeConfiguration}get diagnosticsOptions(){return this._diagnosticsOptions}setDiagnosticsOptions(e){this._diagnosticsOptions=e||Object.create(null),this._onDidChange.fire(this)}setModeConfiguration(e){this._modeConfiguration=e||Object.create(null),this._onDidChange.fire(this)}}("json",{validate:!0,allowComments:!0,schemas:[],enableSchemaRequest:!1,schemaRequest:"warning",schemaValidation:"warning",comments:"error",trailingCommas:"error"},{documentFormattingEdits:!0,documentRangeFormattingEdits:!0,completionItems:!0,hovers:!0,documentSymbols:!0,tokens:!0,colors:!0,foldingRanges:!0,diagnostics:!0,selectionRanges:!0}),f=()=>j().then((e=>e.getWorker()));function j(){return new Promise(((e,t)=>{g(["vs/language/json/jsonMode"],e,t)}))}return m.languages.json={jsonDefaults:h,getWorker:f},m.languages.register({id:"json",extensions:[".json",".bowerrc",".jshintrc",".jscsrc",".eslintrc",".babelrc",".har"],aliases:["JSON","json"],mimetypes:["application/json"]}),m.languages.onLanguage("json",(()=>{j().then((e=>e.setupMode(h)))})),(e=>c(r({},"__esModule",{value:!0}),e))(p)})()}));