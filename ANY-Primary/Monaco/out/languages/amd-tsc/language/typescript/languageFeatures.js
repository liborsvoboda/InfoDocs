var __extends=this&&this.__extends||function(){var e=function(t,n){return e=Object.setPrototypeOf||{__proto__:[]}instanceof Array&&function(e,t){e.__proto__=t}||function(e,t){for(var n in t)Object.prototype.hasOwnProperty.call(t,n)&&(e[n]=t[n])},e(t,n)};return function(t,n){if("function"!=typeof n&&null!==n)throw new TypeError("Class extends value "+String(n)+" is not a constructor or null");function r(){this.constructor=t}e(t,n),t.prototype=null===n?Object.create(n):(r.prototype=n.prototype,new r)}}(),__assign=this&&this.__assign||function(){return __assign=Object.assign||function(e){for(var t,n=1,r=arguments.length;n<r;n++)for(var i in t=arguments[n])Object.prototype.hasOwnProperty.call(t,i)&&(e[i]=t[i]);return e},__assign.apply(this,arguments)},__awaiter=this&&this.__awaiter||function(e,t,n,r){return new(n||(n=Promise))((function(i,o){function a(e){try{u(r.next(e))}catch(e){o(e)}}function s(e){try{u(r.throw(e))}catch(e){o(e)}}function u(e){var t;e.done?i(e.value):(t=e.value,t instanceof n?t:new n((function(e){e(t)}))).then(a,s)}u((r=r.apply(e,t||[])).next())}))},__generator=this&&this.__generator||function(e,t){var n,r,i,o,a={label:0,sent:function(){if(1&i[0])throw i[1];return i[1]},trys:[],ops:[]};return o={next:s(0),throw:s(1),return:s(2)},"function"==typeof Symbol&&(o[Symbol.iterator]=function(){return this}),o;function s(s){return function(u){return function(s){if(n)throw new TypeError("Generator is already executing.");for(;o&&(o=0,s[0]&&(a=0)),a;)try{if(n=1,r&&(i=2&s[0]?r.return:s[0]?r.throw||((i=r.return)&&i.call(r),0):r.next)&&!(i=i.call(r,s[1])).done)return i;switch(r=0,i&&(s=[2&s[0],i.value]),s[0]){case 0:case 1:i=s;break;case 4:return a.label++,{value:s[1],done:!1};case 5:a.label++,r=s[1],s=[0];continue;case 7:s=a.ops.pop(),a.trys.pop();continue;default:if(!((i=(i=a.trys).length>0&&i[i.length-1])||6!==s[0]&&2!==s[0])){a=0;continue}if(3===s[0]&&(!i||s[1]>i[0]&&s[1]<i[3])){a.label=s[1];break}if(6===s[0]&&a.label<i[1]){a.label=i[1],i=s;break}if(i&&a.label<i[2]){a.label=i[2],a.ops.push(s);break}i[2]&&a.ops.pop(),a.trys.pop();continue}s=t.call(e,a)}catch(e){s=[6,e],r=0}finally{n=i=0}if(5&s[0])throw s[1];return{value:s[0]?s[1]:void 0,done:!0}}([s,u])}}};define(["require","exports","./monaco.contribution","./lib/lib.index","../../fillers/monaco-editor-core"],(function(e,t,n,r,i){"use strict";var o;function a(e,t,n){if(void 0===n&&(n=0),"string"==typeof e)return e;if(void 0===e)return"";var r="";if(n){r+=t;for(var i=0;i<n;i++)r+="  "}if(r+=e.messageText,n++,e.next)for(var o=0,s=e.next;o<s.length;o++)r+=a(s[o],t,n);return r}function s(e){return e?e.map((function(e){return e.text})).join(""):""}Object.defineProperty(t,"__esModule",{value:!0}),t.InlayHintsAdapter=t.RenameAdapter=t.CodeActionAdaptor=t.FormatOnTypeAdapter=t.FormatAdapter=t.FormatHelper=t.Kind=t.OutlineAdapter=t.ReferenceAdapter=t.DefinitionAdapter=t.DocumentHighlightAdapter=t.QuickInfoAdapter=t.SignatureHelpAdapter=t.SuggestAdapter=t.DiagnosticsAdapter=t.LibFiles=t.Adapter=t.flattenDiagnosticMessageText=void 0,function(e){e[e.None=0]="None",e[e.Block=1]="Block",e[e.Smart=2]="Smart"}(o||(o={})),t.flattenDiagnosticMessageText=a;var u=function(){function e(e){this._worker=e}return e.prototype._textSpanToRange=function(e,t){var n=e.getPositionAt(t.start),r=e.getPositionAt(t.start+t.length);return{startLineNumber:n.lineNumber,startColumn:n.column,endLineNumber:r.lineNumber,endColumn:r.column}},e}();t.Adapter=u;var c,l=function(){function e(e){this._worker=e,this._libFiles={},this._hasFetchedLibFiles=!1,this._fetchLibFilesPromise=null}return e.prototype.isLibFile=function(e){return!!e&&0===e.path.indexOf("/lib.")&&!!r.libFileSet[e.path.slice(1)]},e.prototype.getOrCreateModel=function(e){var t=i.Uri.parse(e),r=i.editor.getModel(t);if(r)return r;if(this.isLibFile(t)&&this._hasFetchedLibFiles)return i.editor.createModel(this._libFiles[t.path.slice(1)],"typescript",t);var o=n.typescriptDefaults.getExtraLibs()[e];return o?i.editor.createModel(o.content,"typescript",t):null},e.prototype._containsLibFile=function(e){for(var t=0,n=e;t<n.length;t++){var r=n[t];if(this.isLibFile(r))return!0}return!1},e.prototype.fetchLibFilesIfNecessary=function(e){return __awaiter(this,void 0,void 0,(function(){return __generator(this,(function(t){switch(t.label){case 0:return this._containsLibFile(e)?[4,this._fetchLibFiles()]:[2];case 1:return t.sent(),[2]}}))}))},e.prototype._fetchLibFiles=function(){var e=this;return this._fetchLibFilesPromise||(this._fetchLibFilesPromise=this._worker().then((function(e){return e.getLibFiles()})).then((function(t){e._hasFetchedLibFiles=!0,e._libFiles=t}))),this._fetchLibFilesPromise},e}();t.LibFiles=l,function(e){e[e.Warning=0]="Warning",e[e.Error=1]="Error",e[e.Suggestion=2]="Suggestion",e[e.Message=3]="Message"}(c||(c={}));var p=function(e){function t(t,n,r,o){var a=e.call(this,o)||this;a._libFiles=t,a._defaults=n,a._selector=r,a._disposables=[],a._listener=Object.create(null);var s=function(e){if(e.getLanguageId()===r){var t,n=function(){a._defaults.getDiagnosticsOptions().onlyVisible?e.isAttachedToEditor()&&a._doValidate(e):a._doValidate(e)},o=e.onDidChangeContent((function(){clearTimeout(t),t=window.setTimeout(n,500)})),s=e.onDidChangeAttached((function(){a._defaults.getDiagnosticsOptions().onlyVisible&&(e.isAttachedToEditor()?n():i.editor.setModelMarkers(e,a._selector,[]))}));a._listener[e.uri.toString()]={dispose:function(){o.dispose(),s.dispose(),clearTimeout(t)}},n()}},u=function(e){i.editor.setModelMarkers(e,a._selector,[]);var t=e.uri.toString();a._listener[t]&&(a._listener[t].dispose(),delete a._listener[t])};a._disposables.push(i.editor.onDidCreateModel((function(e){return s(e)}))),a._disposables.push(i.editor.onWillDisposeModel(u)),a._disposables.push(i.editor.onDidChangeModelLanguage((function(e){u(e.model),s(e.model)}))),a._disposables.push({dispose:function(){for(var e=0,t=i.editor.getModels();e<t.length;e++){var n=t[e];u(n)}}});var c=function(){for(var e=0,t=i.editor.getModels();e<t.length;e++){var n=t[e];u(n),s(n)}};return a._disposables.push(a._defaults.onDidChange(c)),a._disposables.push(a._defaults.onDidExtraLibsChange(c)),i.editor.getModels().forEach((function(e){return s(e)})),a}return __extends(t,e),t.prototype.dispose=function(){this._disposables.forEach((function(e){return e&&e.dispose()})),this._disposables=[]},t.prototype._doValidate=function(e){return __awaiter(this,void 0,void 0,(function(){var t,n,r,o,a,s,u,c,l,p=this;return __generator(this,(function(d){switch(d.label){case 0:return[4,this._worker(e.uri)];case 1:return t=d.sent(),e.isDisposed()?[2]:(n=[],r=this._defaults.getDiagnosticsOptions(),o=r.noSyntaxValidation,a=r.noSemanticValidation,s=r.noSuggestionDiagnostics,o||n.push(t.getSyntacticDiagnostics(e.uri.toString())),a||n.push(t.getSemanticDiagnostics(e.uri.toString())),s||n.push(t.getSuggestionDiagnostics(e.uri.toString())),[4,Promise.all(n)]);case 2:return!(u=d.sent())||e.isDisposed()?[2]:(c=u.reduce((function(e,t){return t.concat(e)}),[]).filter((function(e){return-1===(p._defaults.getDiagnosticsOptions().diagnosticCodesToIgnore||[]).indexOf(e.code)})),l=c.map((function(e){return e.relatedInformation||[]})).reduce((function(e,t){return t.concat(e)}),[]).map((function(e){return e.file?i.Uri.parse(e.file.fileName):null})),[4,this._libFiles.fetchLibFilesIfNecessary(l)]);case 3:return d.sent(),e.isDisposed()||i.editor.setModelMarkers(e,this._selector,c.map((function(t){return p._convertDiagnostics(e,t)}))),[2]}}))}))},t.prototype._convertDiagnostics=function(e,t){var n=t.start||0,r=t.length||1,o=e.getPositionAt(n),s=o.lineNumber,u=o.column,c=e.getPositionAt(n+r),l=c.lineNumber,p=c.column,d=[];return t.reportsUnnecessary&&d.push(i.MarkerTag.Unnecessary),t.reportsDeprecated&&d.push(i.MarkerTag.Deprecated),{severity:this._tsDiagnosticCategoryToMarkerSeverity(t.category),startLineNumber:s,startColumn:u,endLineNumber:l,endColumn:p,message:a(t.messageText,"\n"),code:t.code.toString(),tags:d,relatedInformation:this._convertRelatedInformation(e,t.relatedInformation)}},t.prototype._convertRelatedInformation=function(e,t){var n=this;if(!t)return[];var r=[];return t.forEach((function(t){var i=e;if(t.file&&(i=n._libFiles.getOrCreateModel(t.file.fileName)),i){var o=t.start||0,s=t.length||1,u=i.getPositionAt(o),c=u.lineNumber,l=u.column,p=i.getPositionAt(o+s),d=p.lineNumber,g=p.column;r.push({resource:i.uri,startLineNumber:c,startColumn:l,endLineNumber:d,endColumn:g,message:a(t.messageText,"\n")})}})),r},t.prototype._tsDiagnosticCategoryToMarkerSeverity=function(e){switch(e){case c.Error:return i.MarkerSeverity.Error;case c.Message:return i.MarkerSeverity.Info;case c.Warning:return i.MarkerSeverity.Warning;case c.Suggestion:return i.MarkerSeverity.Hint}return i.MarkerSeverity.Info},t}(u);t.DiagnosticsAdapter=p;var d=function(e){function t(){return null!==e&&e.apply(this,arguments)||this}return __extends(t,e),Object.defineProperty(t.prototype,"triggerCharacters",{get:function(){return["."]},enumerable:!1,configurable:!0}),t.prototype.provideCompletionItems=function(e,n,r,o){return __awaiter(this,void 0,void 0,(function(){var r,o,a,s,u,c;return __generator(this,(function(l){switch(l.label){case 0:return r=e.getWordUntilPosition(n),o=new i.Range(n.lineNumber,r.startColumn,n.lineNumber,r.endColumn),a=e.uri,s=e.getOffsetAt(n),[4,this._worker(a)];case 1:return u=l.sent(),e.isDisposed()?[2]:[4,u.getCompletionsAtPosition(a.toString(),s)];case 2:return!(c=l.sent())||e.isDisposed()?[2]:[2,{suggestions:c.entries.map((function(r){var u=o;if(r.replacementSpan){var c=e.getPositionAt(r.replacementSpan.start),l=e.getPositionAt(r.replacementSpan.start+r.replacementSpan.length);u=new i.Range(c.lineNumber,c.column,l.lineNumber,l.column)}var p=[];return void 0!==r.kindModifiers&&-1!==r.kindModifiers.indexOf("deprecated")&&p.push(i.languages.CompletionItemTag.Deprecated),{uri:a,position:n,offset:s,range:u,label:r.name,insertText:r.name,sortText:r.sortText,kind:t.convertKind(r.kind),tags:p}}))}]}}))}))},t.prototype.resolveCompletionItem=function(e,n){return __awaiter(this,void 0,void 0,(function(){var n,r,i,o,a;return __generator(this,(function(u){switch(u.label){case 0:return r=(n=e).uri,i=n.position,o=n.offset,[4,this._worker(r)];case 1:return[4,u.sent().getCompletionEntryDetails(r.toString(),o,n.label)];case 2:return(a=u.sent())?[2,{uri:r,position:i,label:a.name,kind:t.convertKind(a.kind),detail:s(a.displayParts),documentation:{value:t.createDocumentationString(a)}}]:[2,n]}}))}))},t.convertKind=function(e){switch(e){case y.primitiveType:case y.keyword:return i.languages.CompletionItemKind.Keyword;case y.variable:case y.localVariable:return i.languages.CompletionItemKind.Variable;case y.memberVariable:case y.memberGetAccessor:case y.memberSetAccessor:return i.languages.CompletionItemKind.Field;case y.function:case y.memberFunction:case y.constructSignature:case y.callSignature:case y.indexSignature:return i.languages.CompletionItemKind.Function;case y.enum:return i.languages.CompletionItemKind.Enum;case y.module:return i.languages.CompletionItemKind.Module;case y.class:return i.languages.CompletionItemKind.Class;case y.interface:return i.languages.CompletionItemKind.Interface;case y.warning:return i.languages.CompletionItemKind.File}return i.languages.CompletionItemKind.Property},t.createDocumentationString=function(e){var t=s(e.documentation);if(e.tags)for(var n=0,r=e.tags;n<r.length;n++){var i=r[n];t+="\n\n".concat(g(i))}return t},t}(u);function g(e){var t="*@".concat(e.name,"*");if("param"===e.name&&e.text){var n=e.text,r=n[0],i=n.slice(1);t+="`".concat(r.text,"`"),i.length>0&&(t+=" — ".concat(i.map((function(e){return e.text})).join(" ")))}else Array.isArray(e.text)?t+=" — ".concat(e.text.map((function(e){return e.text})).join(" ")):e.text&&(t+=" — ".concat(e.text));return t}t.SuggestAdapter=d;var f=function(e){function t(){var t=null!==e&&e.apply(this,arguments)||this;return t.signatureHelpTriggerCharacters=["(",","],t}return __extends(t,e),t._toSignatureHelpTriggerReason=function(e){switch(e.triggerKind){case i.languages.SignatureHelpTriggerKind.TriggerCharacter:return e.triggerCharacter?e.isRetrigger?{kind:"retrigger",triggerCharacter:e.triggerCharacter}:{kind:"characterTyped",triggerCharacter:e.triggerCharacter}:{kind:"invoked"};case i.languages.SignatureHelpTriggerKind.ContentChange:return e.isRetrigger?{kind:"retrigger"}:{kind:"invoked"};case i.languages.SignatureHelpTriggerKind.Invoke:default:return{kind:"invoked"}}},t.prototype.provideSignatureHelp=function(e,n,r,i){return __awaiter(this,void 0,void 0,(function(){var r,o,a,u,c;return __generator(this,(function(l){switch(l.label){case 0:return r=e.uri,o=e.getOffsetAt(n),[4,this._worker(r)];case 1:return a=l.sent(),e.isDisposed()?[2]:[4,a.getSignatureHelpItems(r.toString(),o,{triggerReason:t._toSignatureHelpTriggerReason(i)})];case 2:return!(u=l.sent())||e.isDisposed()?[2]:(c={activeSignature:u.selectedItemIndex,activeParameter:u.argumentIndex,signatures:[]},u.items.forEach((function(e){var t={label:"",parameters:[]};t.documentation={value:s(e.documentation)},t.label+=s(e.prefixDisplayParts),e.parameters.forEach((function(n,r,i){var o=s(n.displayParts),a={label:o,documentation:{value:s(n.documentation)}};t.label+=o,t.parameters.push(a),r<i.length-1&&(t.label+=s(e.separatorDisplayParts))})),t.label+=s(e.suffixDisplayParts),c.signatures.push(t)})),[2,{value:c,dispose:function(){}}])}}))}))},t}(u);t.SignatureHelpAdapter=f;var m=function(e){function t(){return null!==e&&e.apply(this,arguments)||this}return __extends(t,e),t.prototype.provideHover=function(e,t,n){return __awaiter(this,void 0,void 0,(function(){var n,r,i,o,a,u,c;return __generator(this,(function(l){switch(l.label){case 0:return n=e.uri,r=e.getOffsetAt(t),[4,this._worker(n)];case 1:return i=l.sent(),e.isDisposed()?[2]:[4,i.getQuickInfoAtPosition(n.toString(),r)];case 2:return!(o=l.sent())||e.isDisposed()?[2]:(a=s(o.documentation),u=o.tags?o.tags.map((function(e){return g(e)})).join("  \n\n"):"",c=s(o.displayParts),[2,{range:this._textSpanToRange(e,o.textSpan),contents:[{value:"```typescript\n"+c+"\n```\n"},{value:a+(u?"\n\n"+u:"")}]}])}}))}))},t}(u);t.QuickInfoAdapter=m;var h=function(e){function t(){return null!==e&&e.apply(this,arguments)||this}return __extends(t,e),t.prototype.provideDocumentHighlights=function(e,t,n){return __awaiter(this,void 0,void 0,(function(){var n,r,o,a,s=this;return __generator(this,(function(u){switch(u.label){case 0:return n=e.uri,r=e.getOffsetAt(t),[4,this._worker(n)];case 1:return o=u.sent(),e.isDisposed()?[2]:[4,o.getDocumentHighlights(n.toString(),r,[n.toString()])];case 2:return!(a=u.sent())||e.isDisposed()?[2]:[2,a.flatMap((function(t){return t.highlightSpans.map((function(t){return{range:s._textSpanToRange(e,t.textSpan),kind:"writtenReference"===t.kind?i.languages.DocumentHighlightKind.Write:i.languages.DocumentHighlightKind.Text}}))}))]}}))}))},t}(u);t.DocumentHighlightAdapter=h;var _=function(e){function t(t,n){var r=e.call(this,n)||this;return r._libFiles=t,r}return __extends(t,e),t.prototype.provideDefinition=function(e,t,n){return __awaiter(this,void 0,void 0,(function(){var n,r,o,a,s,u,c,l,p;return __generator(this,(function(d){switch(d.label){case 0:return n=e.uri,r=e.getOffsetAt(t),[4,this._worker(n)];case 1:return o=d.sent(),e.isDisposed()?[2]:[4,o.getDefinitionAtPosition(n.toString(),r)];case 2:return!(a=d.sent())||e.isDisposed()?[2]:[4,this._libFiles.fetchLibFilesIfNecessary(a.map((function(e){return i.Uri.parse(e.fileName)})))];case 3:if(d.sent(),e.isDisposed())return[2];for(s=[],u=0,c=a;u<c.length;u++)l=c[u],(p=this._libFiles.getOrCreateModel(l.fileName))&&s.push({uri:p.uri,range:this._textSpanToRange(p,l.textSpan)});return[2,s]}}))}))},t}(u);t.DefinitionAdapter=_;var v=function(e){function t(t,n){var r=e.call(this,n)||this;return r._libFiles=t,r}return __extends(t,e),t.prototype.provideReferences=function(e,t,n,r){return __awaiter(this,void 0,void 0,(function(){var n,r,o,a,s,u,c,l,p;return __generator(this,(function(d){switch(d.label){case 0:return n=e.uri,r=e.getOffsetAt(t),[4,this._worker(n)];case 1:return o=d.sent(),e.isDisposed()?[2]:[4,o.getReferencesAtPosition(n.toString(),r)];case 2:return!(a=d.sent())||e.isDisposed()?[2]:[4,this._libFiles.fetchLibFilesIfNecessary(a.map((function(e){return i.Uri.parse(e.fileName)})))];case 3:if(d.sent(),e.isDisposed())return[2];for(s=[],u=0,c=a;u<c.length;u++)l=c[u],(p=this._libFiles.getOrCreateModel(l.fileName))&&s.push({uri:p.uri,range:this._textSpanToRange(p,l.textSpan)});return[2,s]}}))}))},t}(u);t.ReferenceAdapter=v;var b=function(e){function t(){return null!==e&&e.apply(this,arguments)||this}return __extends(t,e),t.prototype.provideDocumentSymbols=function(e,t){return __awaiter(this,void 0,void 0,(function(){var t,n,r,o,a=this;return __generator(this,(function(s){switch(s.label){case 0:return t=e.uri,[4,this._worker(t)];case 1:return n=s.sent(),e.isDisposed()?[2]:[4,n.getNavigationTree(t.toString())];case 2:return!(r=s.sent())||e.isDisposed()?[2]:(o=function(t,n){var r;return{name:t.text,detail:"",kind:S[t.kind]||i.languages.SymbolKind.Variable,range:a._textSpanToRange(e,t.spans[0]),selectionRange:a._textSpanToRange(e,t.spans[0]),tags:[],children:null===(r=t.childItems)||void 0===r?void 0:r.map((function(e){return o(e,t.text)})),containerName:n}},[2,r.childItems?r.childItems.map((function(e){return o(e)})):[]])}}))}))},t}(u);t.OutlineAdapter=b;var y=function(){function e(){}return e.unknown="",e.keyword="keyword",e.script="script",e.module="module",e.class="class",e.interface="interface",e.type="type",e.enum="enum",e.variable="var",e.localVariable="local var",e.function="function",e.localFunction="local function",e.memberFunction="method",e.memberGetAccessor="getter",e.memberSetAccessor="setter",e.memberVariable="property",e.constructorImplementation="constructor",e.callSignature="call",e.indexSignature="index",e.constructSignature="construct",e.parameter="parameter",e.typeParameter="type parameter",e.primitiveType="primitive type",e.label="label",e.alias="alias",e.const="const",e.let="let",e.warning="warning",e}();t.Kind=y;var S=Object.create(null);S[y.module]=i.languages.SymbolKind.Module,S[y.class]=i.languages.SymbolKind.Class,S[y.enum]=i.languages.SymbolKind.Enum,S[y.interface]=i.languages.SymbolKind.Interface,S[y.memberFunction]=i.languages.SymbolKind.Method,S[y.memberVariable]=i.languages.SymbolKind.Property,S[y.memberGetAccessor]=i.languages.SymbolKind.Property,S[y.memberSetAccessor]=i.languages.SymbolKind.Property,S[y.variable]=i.languages.SymbolKind.Variable,S[y.const]=i.languages.SymbolKind.Variable,S[y.localVariable]=i.languages.SymbolKind.Variable,S[y.variable]=i.languages.SymbolKind.Variable,S[y.function]=i.languages.SymbolKind.Function,S[y.localFunction]=i.languages.SymbolKind.Function;var w=function(e){function t(){return null!==e&&e.apply(this,arguments)||this}return __extends(t,e),t._convertOptions=function(e){return{ConvertTabsToSpaces:e.insertSpaces,TabSize:e.tabSize,IndentSize:e.tabSize,IndentStyle:o.Smart,NewLineCharacter:"\n",InsertSpaceAfterCommaDelimiter:!0,InsertSpaceAfterSemicolonInForStatements:!0,InsertSpaceBeforeAndAfterBinaryOperators:!0,InsertSpaceAfterKeywordsInControlFlowStatements:!0,InsertSpaceAfterFunctionKeywordForAnonymousFunctions:!0,InsertSpaceAfterOpeningAndBeforeClosingNonemptyParenthesis:!1,InsertSpaceAfterOpeningAndBeforeClosingNonemptyBrackets:!1,InsertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces:!1,PlaceOpenBraceOnNewLineForControlBlocks:!1,PlaceOpenBraceOnNewLineForFunctions:!1}},t.prototype._convertTextChanges=function(e,t){return{text:t.newText,range:this._textSpanToRange(e,t.span)}},t}(u);t.FormatHelper=w;var x=function(e){function t(){var t=null!==e&&e.apply(this,arguments)||this;return t.canFormatMultipleRanges=!1,t}return __extends(t,e),t.prototype.provideDocumentRangeFormattingEdits=function(e,t,n,r){return __awaiter(this,void 0,void 0,(function(){var r,i,o,a,s,u=this;return __generator(this,(function(c){switch(c.label){case 0:return r=e.uri,i=e.getOffsetAt({lineNumber:t.startLineNumber,column:t.startColumn}),o=e.getOffsetAt({lineNumber:t.endLineNumber,column:t.endColumn}),[4,this._worker(r)];case 1:return a=c.sent(),e.isDisposed()?[2]:[4,a.getFormattingEditsForRange(r.toString(),i,o,w._convertOptions(n))];case 2:return!(s=c.sent())||e.isDisposed()?[2]:[2,s.map((function(t){return u._convertTextChanges(e,t)}))]}}))}))},t}(w);t.FormatAdapter=x;var A=function(e){function t(){return null!==e&&e.apply(this,arguments)||this}return __extends(t,e),Object.defineProperty(t.prototype,"autoFormatTriggerCharacters",{get:function(){return[";","}","\n"]},enumerable:!1,configurable:!0}),t.prototype.provideOnTypeFormattingEdits=function(e,t,n,r,i){return __awaiter(this,void 0,void 0,(function(){var i,o,a,s,u=this;return __generator(this,(function(c){switch(c.label){case 0:return i=e.uri,o=e.getOffsetAt(t),[4,this._worker(i)];case 1:return a=c.sent(),e.isDisposed()?[2]:[4,a.getFormattingEditsAfterKeystroke(i.toString(),o,n,w._convertOptions(r))];case 2:return!(s=c.sent())||e.isDisposed()?[2]:[2,s.map((function(t){return u._convertTextChanges(e,t)}))]}}))}))},t}(w);t.FormatOnTypeAdapter=A;var C=function(e){function t(){return null!==e&&e.apply(this,arguments)||this}return __extends(t,e),t.prototype.provideCodeActions=function(e,t,n,r){return __awaiter(this,void 0,void 0,(function(){var r,i,o,a,s,u,c,l=this;return __generator(this,(function(p){switch(p.label){case 0:return r=e.uri,i=e.getOffsetAt({lineNumber:t.startLineNumber,column:t.startColumn}),o=e.getOffsetAt({lineNumber:t.endLineNumber,column:t.endColumn}),a=w._convertOptions(e.getOptions()),s=n.markers.filter((function(e){return e.code})).map((function(e){return e.code})).map(Number),[4,this._worker(r)];case 1:return u=p.sent(),e.isDisposed()?[2]:[4,u.getCodeFixesAtPosition(r.toString(),i,o,s,a)];case 2:return!(c=p.sent())||e.isDisposed()?[2,{actions:[],dispose:function(){}}]:[2,{actions:c.filter((function(e){return 0===e.changes.filter((function(e){return e.isNewFile})).length})).map((function(t){return l._tsCodeFixActionToMonacoCodeAction(e,n,t)})),dispose:function(){}}]}}))}))},t.prototype._tsCodeFixActionToMonacoCodeAction=function(e,t,n){for(var r=[],i=0,o=n.changes;i<o.length;i++)for(var a=0,s=o[i].textChanges;a<s.length;a++){var u=s[a];r.push({resource:e.uri,versionId:void 0,textEdit:{range:this._textSpanToRange(e,u.span),text:u.newText}})}return{title:n.description,edit:{edits:r},diagnostics:t.markers,kind:"quickfix"}},t}(w);t.CodeActionAdaptor=C;var D=function(e){function t(t,n){var r=e.call(this,n)||this;return r._libFiles=t,r}return __extends(t,e),t.prototype.provideRenameEdits=function(e,t,n,r){return __awaiter(this,void 0,void 0,(function(){var r,i,o,a,s,u,c,l,p,d,g;return __generator(this,(function(f){switch(f.label){case 0:return r=e.uri,i=r.toString(),o=e.getOffsetAt(t),[4,this._worker(r)];case 1:return a=f.sent(),e.isDisposed()?[2]:[4,a.getRenameInfo(i,o,{allowRenameOfImportPath:!1})];case 2:if(!1===(s=f.sent()).canRename)return[2,{edits:[],rejectReason:s.localizedErrorMessage}];if(void 0!==s.fileToRename)throw new Error("Renaming files is not supported.");return[4,a.findRenameLocations(i,o,!1,!1,!1)];case 3:if(!(u=f.sent())||e.isDisposed())return[2];for(c=[],l=0,p=u;l<p.length;l++){if(d=p[l],!(g=this._libFiles.getOrCreateModel(d.fileName)))throw new Error("Unknown file ".concat(d.fileName,"."));c.push({resource:g.uri,versionId:void 0,textEdit:{range:this._textSpanToRange(g,d.textSpan),text:n}})}return[2,{edits:c}]}}))}))},t}(u);t.RenameAdapter=D;var F=function(e){function t(){return null!==e&&e.apply(this,arguments)||this}return __extends(t,e),t.prototype.provideInlayHints=function(e,t,n){return __awaiter(this,void 0,void 0,(function(){var n,r,i,o,a,s=this;return __generator(this,(function(u){switch(u.label){case 0:return n=e.uri,r=n.toString(),i=e.getOffsetAt({lineNumber:t.startLineNumber,column:t.startColumn}),o=e.getOffsetAt({lineNumber:t.endLineNumber,column:t.endColumn}),[4,this._worker(n)];case 1:return a=u.sent(),e.isDisposed()?[2,null]:[4,a.provideInlayHints(r,i,o)];case 2:return[2,{hints:u.sent().map((function(t){return __assign(__assign({},t),{label:t.text,position:e.getPositionAt(t.position),kind:s._convertHintKind(t.kind)})})),dispose:function(){}}]}}))}))},t.prototype._convertHintKind=function(e){return"Parameter"===e?i.languages.InlayHintKind.Parameter:i.languages.InlayHintKind.Type},t}(u);t.InlayHintsAdapter=F}));