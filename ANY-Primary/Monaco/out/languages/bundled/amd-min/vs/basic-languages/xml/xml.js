/*! For license information please see xml.js.LICENSE.txt */
define("vs/basic-languages/xml/xml",["require","require"],(e=>{"use strict";return(()=>{var t,n,o=Object.create,a=Object.defineProperty,i=Object.getOwnPropertyDescriptor,r=Object.getOwnPropertyNames,l=Object.getPrototypeOf,u=Object.prototype.hasOwnProperty,m=(t=function(t){if(typeof e<"u")return e.apply(this,arguments);throw Error('Dynamic require of "'+t+'" is not supported')},typeof e<"u"?e:typeof Proxy<"u"?new Proxy(t,{get:(t,n)=>(typeof e<"u"?e:t)[n]}):t),c=(e,t,n,o)=>{if(t&&"object"==typeof t||"function"==typeof t)for(let l of r(t))!u.call(e,l)&&l!==n&&a(e,l,{get:()=>t[l],enumerable:!(o=i(t,l))||o.enumerable});return e},d=(e,t,n)=>(n=null!=e?o(l(e)):{},c(!t&&e&&e.__esModule?n:a(n,"default",{value:e,enumerable:!0}),e)),s=()=>{return n||(e=n={exports:{}},t=d(m("vs/editor/editor.api")),e.exports=t),n.exports;var e,t},p={};((e,t)=>{for(var n in t)a(e,n,{get:t[n],enumerable:!0})})(p,{conf:()=>g,language:()=>x});var f={};((e,t,n)=>{c(e,t,"default")})(f,d(s()));var g={comments:{blockComment:["\x3c!--","--\x3e"]},brackets:[["<",">"]],autoClosingPairs:[{open:"<",close:">"},{open:"'",close:"'"},{open:'"',close:'"'}],surroundingPairs:[{open:"<",close:">"},{open:"'",close:"'"},{open:'"',close:'"'}],onEnterRules:[{beforeText:new RegExp("<([_:\\w][_:\\w-.\\d]*)([^/>]*(?!/)>)[^<]*$","i"),afterText:/^<\/([_:\w][_:\w-.\d]*)\s*>$/i,action:{indentAction:f.languages.IndentAction.IndentOutdent}},{beforeText:new RegExp("<(\\w[\\w\\d]*)([^/>]*(?!/)>)[^<]*$","i"),action:{indentAction:f.languages.IndentAction.Indent}}]},x={defaultToken:"",tokenPostfix:".xml",ignoreCase:!0,qualifiedName:/(?:[\w\.\-]+:)?[\w\.\-]+/,tokenizer:{root:[[/[^<&]+/,""],{include:"@whitespace"},[/(<)(@qualifiedName)/,[{token:"delimiter"},{token:"tag",next:"@tag"}]],[/(<\/)(@qualifiedName)(\s*)(>)/,[{token:"delimiter"},{token:"tag"},"",{token:"delimiter"}]],[/(<\?)(@qualifiedName)/,[{token:"delimiter"},{token:"metatag",next:"@tag"}]],[/(<\!)(@qualifiedName)/,[{token:"delimiter"},{token:"metatag",next:"@tag"}]],[/<\!\[CDATA\[/,{token:"delimiter.cdata",next:"@cdata"}],[/&\w+;/,"string.escape"]],cdata:[[/[^\]]+/,""],[/\]\]>/,{token:"delimiter.cdata",next:"@pop"}],[/\]/,""]],tag:[[/[ \t\r\n]+/,""],[/(@qualifiedName)(\s*=\s*)("[^"]*"|'[^']*')/,["attribute.name","","attribute.value"]],[/(@qualifiedName)(\s*=\s*)("[^">?\/]*|'[^'>?\/]*)(?=[\?\/]\>)/,["attribute.name","","attribute.value"]],[/(@qualifiedName)(\s*=\s*)("[^">]*|'[^'>]*)/,["attribute.name","","attribute.value"]],[/@qualifiedName/,"attribute.name"],[/\?>/,{token:"delimiter",next:"@pop"}],[/(\/)(>)/,[{token:"tag"},{token:"delimiter",next:"@pop"}]],[/>/,{token:"delimiter",next:"@pop"}]],whitespace:[[/[ \t\r\n]+/,""],[/<!--/,{token:"comment",next:"@comment"}]],comment:[[/[^<\-]+/,"comment.content"],[/-->/,{token:"comment",next:"@pop"}],[/<!--/,"comment.content.invalid"],[/[<\-]/,"comment.content"]]}};return(e=>c(a({},"__esModule",{value:!0}),e))(p)})()}));