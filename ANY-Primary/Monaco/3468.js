"use strict";(self.webpackChunkmy_application=self.webpackChunkmy_application||[]).push([[3468],{3468:(t,n,e)=>{e.r(n),e.d(n,{default:()=>o});const o='var editor = monaco.editor.create(document.getElementById("container"), {\n\tvalue: \'{\\n\\t"dependencies": {\\n\\t\\t\\n\\t}\\n}\\n\',\n\tlanguage: "json",\n});\n\nvar commandId = editor.addCommand(\n\t0,\n\tfunction () {\n\t\t// services available in `ctx`\n\t\talert("my command is executing!");\n\t},\n\t""\n);\n\nmonaco.languages.registerCodeLensProvider("json", {\n\tprovideCodeLenses: function (model, token) {\n\t\treturn {\n\t\t\tlenses: [\n\t\t\t\t{\n\t\t\t\t\trange: {\n\t\t\t\t\t\tstartLineNumber: 1,\n\t\t\t\t\t\tstartColumn: 1,\n\t\t\t\t\t\tendLineNumber: 2,\n\t\t\t\t\t\tendColumn: 1,\n\t\t\t\t\t},\n\t\t\t\t\tid: "First Line",\n\t\t\t\t\tcommand: {\n\t\t\t\t\t\tid: commandId,\n\t\t\t\t\t\ttitle: "First Line",\n\t\t\t\t\t},\n\t\t\t\t},\n\t\t\t],\n\t\t\tdispose: () => {},\n\t\t};\n\t},\n\tresolveCodeLens: function (model, codeLens, token) {\n\t\treturn codeLens;\n\t},\n});\n'}}]);
//# sourceMappingURL=3468.js.map