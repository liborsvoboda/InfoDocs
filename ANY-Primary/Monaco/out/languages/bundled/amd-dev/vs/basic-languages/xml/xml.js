/*! For license information please see xml.js.LICENSE.txt */
define("vs/basic-languages/xml/xml",["require"],(e=>{"use strict";return(()=>{var t,n,o=Object.create,a=Object.defineProperty,i=Object.getOwnPropertyDescriptor,r=Object.getOwnPropertyNames,l=Object.getPrototypeOf,c=Object.prototype.hasOwnProperty,m=(t=>void 0!==e?e:"undefined"!=typeof Proxy?new Proxy(t,{get:(t,n)=>(void 0!==e?e:t)[n]}):t)((function(t){if(void 0!==e)return e.apply(this,arguments);throw Error('Dynamic require of "'+t+'" is not supported')})),u=(e,t,n,o)=>{if(t&&"object"==typeof t||"function"==typeof t)for(let l of r(t))c.call(e,l)||l===n||a(e,l,{get:()=>t[l],enumerable:!(o=i(t,l))||o.enumerable});return e},d=(e,t,n)=>(n=null!=e?o(l(e)):{},u(!t&&e&&e.__esModule?n:a(n,"default",{value:e,enumerable:!0}),e)),s=(t={"src/fillers/monaco-editor-core-amd.ts"(e,t){var n=d(m("vs/editor/editor.api"));t.exports=n}},function(){return n||(0,t[r(t)[0]])((n={exports:{}}).exports,n),n.exports}),p={};((e,t)=>{for(var n in t)a(e,n,{get:t[n],enumerable:!0})})(p,{conf:()=>g,language:()=>x});var f={};((e,t,n)=>{u(e,t,"default")})(f,d(s()));var g={comments:{blockComment:["\x3c!--","--\x3e"]},brackets:[["<",">"]],autoClosingPairs:[{open:"<",close:">"},{open:"'",close:"'"},{open:'"',close:'"'}],surroundingPairs:[{open:"<",close:">"},{open:"'",close:"'"},{open:'"',close:'"'}],onEnterRules:[{beforeText:new RegExp("<([_:\\w][_:\\w-.\\d]*)([^/>]*(?!/)>)[^<]*$","i"),afterText:/^<\/([_:\w][_:\w-.\d]*)\s*>$/i,action:{indentAction:f.languages.IndentAction.IndentOutdent}},{beforeText:new RegExp("<(\\w[\\w\\d]*)([^/>]*(?!/)>)[^<]*$","i"),action:{indentAction:f.languages.IndentAction.Indent}}]},x={defaultToken:"",tokenPostfix:".xml",ignoreCase:!0,qualifiedName:/(?:[\w\.\-]+:)?[\w\.\-]+/,tokenizer:{root:[[/[^<&]+/,""],{include:"@whitespace"},[/(<)(@qualifiedName)/,[{token:"delimiter"},{token:"tag",next:"@tag"}]],[/(<\/)(@qualifiedName)(\s*)(>)/,[{token:"delimiter"},{token:"tag"},"",{token:"delimiter"}]],[/(<\?)(@qualifiedName)/,[{token:"delimiter"},{token:"metatag",next:"@tag"}]],[/(<\!)(@qualifiedName)/,[{token:"delimiter"},{token:"metatag",next:"@tag"}]],[/<\!\[CDATA\[/,{token:"delimiter.cdata",next:"@cdata"}],[/&\w+;/,"string.escape"]],cdata:[[/[^\]]+/,""],[/\]\]>/,{token:"delimiter.cdata",next:"@pop"}],[/\]/,""]],tag:[[/[ \t\r\n]+/,""],[/(@qualifiedName)(\s*=\s*)("[^"]*"|'[^']*')/,["attribute.name","","attribute.value"]],[/(@qualifiedName)(\s*=\s*)("[^">?\/]*|'[^'>?\/]*)(?=[\?\/]\>)/,["attribute.name","","attribute.value"]],[/(@qualifiedName)(\s*=\s*)("[^">]*|'[^'>]*)/,["attribute.name","","attribute.value"]],[/@qualifiedName/,"attribute.name"],[/\?>/,{token:"delimiter",next:"@pop"}],[/(\/)(>)/,[{token:"tag"},{token:"delimiter",next:"@pop"}]],[/>/,{token:"delimiter",next:"@pop"}]],whitespace:[[/[ \t\r\n]+/,""],[/<!--/,{token:"comment",next:"@comment"}]],comment:[[/[^<\-]+/,"comment.content"],[/-->/,{token:"comment",next:"@pop"}],[/<!--/,"comment.content.invalid"],[/[<\-]/,"comment.content"]]}};return(e=>u(a({},"__esModule",{value:!0}),e))(p)})()}));