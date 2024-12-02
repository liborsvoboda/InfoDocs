/* global Metro */
(function(Metro, $) {
    'use strict';
    var Utils = Metro.utils;
    var TreeViewDefaultConfig = {
        treeviewDeferred: 0,
        showChildCount: false,
        duration: 100,
        hideActionsOnLeave: true,
        onNodeClick: Metro.noop,
        onNodeDblClick: Metro.noop,
        onNodeDelete: Metro.noop,
        onNodeInsert: Metro.noop,
        onNodeClean: Metro.noop,
        onCheckClick: Metro.noop,
        onRadioClick: Metro.noop,
        onExpandNode: Metro.noop,
        onCollapseNode: Metro.noop,
        onTreeViewCreate: Metro.noop
    };

    Metro.treeViewSetup = function (options) {
        TreeViewDefaultConfig = $.extend({}, TreeViewDefaultConfig, options);
    };

    if (typeof window["metroTreeViewSetup"] !== undefined) {
        Metro.treeViewSetup(window["metroTreeViewSetup"]);
    }

    Metro.Component('tree-view', {
        init: function( options, elem ) {
            this._super(elem, options, TreeViewDefaultConfig);
            return this;
        },

        _create: function(){
            var that = this, element = this.element;

            this._createTree();
            this._createEvents();

            $.each(element.find("input"), function(){
                if (!$(this).is(":checked")) return;
                that._recheck(this);
            });

            this._fireEvent("tree-view-create", {
                element: element
            });
        },

        _createIcon: function(data){
            var icon, src;

            src = Utils.isTag(data) ? $(data) : $("<img src='' alt=''>").attr("src", data);
            icon = $("<span>").addClass("icon");
            icon.html(src.outerHTML());

            return icon;
        },

        _createCaption: function(data, style){
            const caption = $("<span>").addClass("caption").html(data);

            if (style) {
                if ( Utils.isObject(style) ) {
                    caption.css(style)
                } else if (typeof style === "string") {
                    caption[0].style.cssText = style
                }
            }

            return caption
        },


        _createToggle: function(){
            return $("<span>").addClass("node-toggle");
        },


        _createNode: function(data, target){
            const o = this.options
            const nodeContainer = target ? target : $("<li>")
            const node = $("<a>")

            nodeContainer.prepend(node)

            if (data.caption) {
                node.prepend(this._createCaption(data.caption, data.style));
            }

            if (data.icon) {
                node.prepend(this._createIcon(data.icon));
            }

            if (data.html) {
                node.append(data.html);
            }

            if (data.attributes && Utils.isObject(data.attributes)) {
                for(let key in data.attributes) {
                    node.attr(`data-${key}`, data.attributes[key])
                }
            }

            if (data.badge) {
                node.append(
                    $("<span>").addClass("badge").html(data.badge)
                )
            }

            if (data.badges) {
                $.each(data.badges, function(_, item) {
                    node.append(
                        $("<span>").addClass("badge").html(item)
                    )
                })
            }

            if (data.actions) {
                const actionsHolder = $("<div class='dropdown-button'>").addClass("actions-holder");
                const actionsListTrigger = $("<span class='actions-list-trigger'>").text("⋮").appendTo(actionsHolder)
                const actionsList = $("<ul data-role='dropdown' class='d-menu actions-list'>").appendTo(actionsHolder)
                nodeContainer.append(actionsHolder)
                for(let a of data.actions) {
                    if (a.type && a.type === "divider") {
                        $("<li>").addClass("divider").appendTo(actionsList)
                    } else {
                        const icon = a.icon ? $(a.icon).addClass("icon").outerHTML() : ""
                        const caption = `<span class="caption">${a.caption}</span>`
                        const li = $(`<li><a href="#">${icon} ${caption}</a></li>`).appendTo(actionsList)
                        if (a.cls) {
                            li.addClass(a.cls)
                        }
                        li.find("a").on("click", function () {
                            Metro.utils.exec(a.onclick, [li[0]], this)
                        })
                    }
                }
                actionsList.on(Metro.events.leave, (e) => {
                    if (o.hideActionsOnLeave) Metro.getPlugin(actionsList, "dropdown").close()
                })
            }

            if (data.type === 'node') {
                nodeContainer.addClass("tree-node")
                nodeContainer.append($("<span>").addClass("node-toggle"))
                nodeContainer.append( $("<ul>") )
            }

            if (nodeContainer.children("ul").length) {
                nodeContainer.addClass("tree-node")
                nodeContainer.append($("<span>").addClass("node-toggle"))
            }

            const hasChildren = nodeContainer.children("ul").length

            if (hasChildren) {
                if (Metro.utils.bool(data.collapsed) !== true) {
                    nodeContainer.addClass("expanded")
                } else {
                    nodeContainer.children("ul").hide()
                }
            }

            return nodeContainer;
        },

        _createTree: function(){
            var that = this, element = this.element, o = this.options;
            var nodes = element.find("li[data-caption]");

            element.addClass("treeview");

            $.each(nodes, (i, _el) => {
                const el = $(_el)

                this._createNode({
                    caption: el.data("caption"),
                    icon: el.data("icon"),
                    html: el.data("html"),
                    attributes: el.data("attributes"),
                    badge: el.data("badge"),
                    badges: el.data("badges"),
                    actions: el.data("actions"),
                    type: el.data("type"),
                    collapsed: el.data("collapsed"),
                }, el)
            });
        },

        _createEvents: function(){
            var that = this, element = this.element;

            element.on(Metro.events.click, ".node-toggle", function(e){
                var toggle = $(this);
                var node = toggle.parent();

                that.toggleNode(node);

                e.preventDefault();
            });

            element.on(Metro.events.click, "a", function(e){
                var node = $(this).parent();

                that.current(node);

                that._fireEvent("node-click", {
                    node: node[0]
                });

                e.preventDefault();
            });

            element.on(Metro.events.dblclick, "a", function(e){
                var node = $(this).closest("li");
                var toggle = node.children(".node-toggle");
                var subtree = node.children("ul");

                if (toggle.length > 0 || subtree.length > 0) {
                    that.toggleNode(node);
                }

                that._fireEvent("node-dbl-click", {
                    node: node[0]
                })

                e.preventDefault();
            });

            element.on(Metro.events.click, "input[type=radio]", function(){
                var check = $(this);
                var checked = check.is(":checked");
                var node = check.closest("li");

                that.current(node);

                that._fireEvent("radio-click", {
                    checked: checked,
                    check: check[0],
                    node: node[0]
                });
            });

            element.on(Metro.events.click, "input[type=checkbox]", function(){
                var check = $(this);
                var checked = check.is(":checked");
                var node = check.closest("li");

                that._recheck(check);

                that._fireEvent("check-click", {
                    checked: checked,
                    check: check[0],
                    node: node[0]
                });
            });
        },

        _recheck: function(check){
            var element = this.element;
            var checked, node, checks, all_checks;

            check = $(check);

            checked = check.is(":checked");
            node = check.closest("li");

            this.current(node);

            // down
            checks = check.closest("li").find("ul input[type=checkbox]");
            checks.attr("data-indeterminate", false);
            checks.prop("checked", checked);
            checks.trigger('change');

            all_checks = [];

            $.each(element.find("input[type=checkbox]"), function(){
                all_checks.push(this);
            });

            $.each(all_checks.reverse(), function(){
                var ch = $(this);
                var children = ch.closest("li").children("ul").find("input[type=checkbox]").length;
                var children_checked = ch.closest("li").children("ul").find("input[type=checkbox]").filter(function(el){
                    return el.checked;
                }).length;

                if (children > 0 && children_checked === 0) {
                    ch.attr("data-indeterminate", false);
                    ch.prop("checked", false);
                    ch.trigger('change');
                }

                if (children_checked === 0) {
                    ch.attr("data-indeterminate", false);
                } else {
                    if (children_checked > 0 && children > children_checked) {
                        ch.attr("data-indeterminate", true);
                    } else if (children === children_checked) {
                        ch.attr("data-indeterminate", false);
                        ch.prop("checked", true);
                        ch.trigger('change');
                    }
                }
            });
        },

        current: function(node){
            var element = this.element;

            if (!node) {
                return element.find(".current")
            }

            element.find(".current").removeClass("current");
            node.addClass("current");
        },

        toggleNode: function(n){
            var node = $(n);
            var o = this.options;
            var func;
            var toBeExpanded = !node.data("collapsed");//!node.hasClass("expanded");

            node.toggleClass("expanded");
            node.data("collapsed", toBeExpanded);

            func = toBeExpanded === true ? "slideUp" : "slideDown";

            if (!toBeExpanded) {

                this._fireEvent("expand-node", {
                    node: node[0]
                });

            } else {

                this._fireEvent("collapse-node", {
                    node: node[0]
                });

            }

            node.children("ul")[func](o.duration);
        },

        addTo: function(node, data){
            var element = this.element;
            var target;
            var new_node;
            var toggle;

            if (node === null) {
                target = element;
            } else {
                node = $(node);
                target = node.children("ul");
                if (target.length === 0) {
                    target = $("<ul>").appendTo(node);
                    toggle = this._createToggle();
                    toggle.appendTo(node);
                    node.addClass("expanded");
                }
            }

            node.addClass("tree-node")

            new_node = this._createNode(data);

            new_node.appendTo(target);

            this._fireEvent("node-insert", {
                node: new_node[0],
                parent: node ? node[0] : null
            });

            return new_node;
        },

        insertBefore: function(node, data){
            var new_node = this._createNode(data);

            if (Utils.isNull(node)) {
                return this.addTo(node, data);
            }

            node = $(node);
            new_node.insertBefore(node);

            this._fireEvent("node-insert", {
                node: new_node[0],
                parent: node ? node[0] : null
            });

            return new_node;
        },

        insertAfter: function(node, data){
            var new_node = this._createNode(data);

            if (Utils.isNull(node)) {
                return this.addTo(node, data);
            }

            node = $(node);
            new_node.insertAfter(node);

            this._fireEvent("node-insert", {
                node: new_node[0],
                parent: node[0]
            });

            return new_node;
        },

        del: function(node){
            var element = this.element;
            node = $(node);
            var parent_list = node.closest("ul");
            var parent_node = parent_list.closest("li");

            this._fireEvent("node-delete", {
                node: node[0]
            });

            node.remove();

            if (parent_list.children().length === 0 && !parent_list.is(element)) {
                parent_list.remove();
                parent_node.removeClass("expanded");
                parent_node.children(".node-toggle").remove();
            }
        },

        clean: function(node){
            node = $(node);
            node.children("ul").remove();
            node.removeClass("expanded");
            node.children(".node-toggle").remove();

            this._fireEvent("node-clean", {
                node: node[0]
            });
        },

        collapseNode(node){
            const element = this.element, o = this.options;
            node = $(node)
            node.removeClass("expanded");
            node.data("collapsed", true)
            node.children("ul")["slideUp"](o.duration);
            this._fireEvent("collapse-node", {
                node: node[0]
            });
        },

        expandNode(node){
            const element = this.element, o = this.options;
            node = $(node)
            if (!node.hasClass("tree-node")) {
                return
            }
            node.addClass("expanded");
            node.data("collapsed", false)
            node.children("ul")["slideDown"](o.duration);
            this._fireEvent("expand-node", {
                node: node[0]
            });
        },

        collapseAll(){
            const element = this.element, o = this.options;
            element.find(".expanded").each((_, el)=>{
                const node = $(el);
                let func;
                const toBeExpanded = !node.data("collapsed");//!node.hasClass("expanded");

                node.toggleClass("expanded");
                node.data("collapsed", toBeExpanded);
                func = toBeExpanded === true ? "slideUp" : "slideDown";
                if (!toBeExpanded) {
                    this._fireEvent("expand-node", {
                        node: node[0]
                    });
                } else {
                    this._fireEvent("collapse-node", {
                        node: node[0]
                    });
                }
                node.children("ul")[func](o.duration);
            })
            this._fireEvent("collapse-all");
        },

        expandAll(){
            const element = this.element, o = this.options;
            element.find(".tree-node:not(.expanded)").each((_, el)=>{
                const node = $(el);
                let func;
                const toBeExpanded = !node.data("collapsed");//!node.hasClass("expanded");

                node.toggleClass("expanded");
                node.data("collapsed", toBeExpanded);
                func = toBeExpanded === true ? "slideUp" : "slideDown";
                if (!toBeExpanded) {
                    this._fireEvent("expand-node", {
                        node: node[0]
                    });
                } else {
                    this._fireEvent("collapse-node", {
                        node: node[0]
                    });
                }
                node.children("ul")[func](o.duration);
            })
            this._fireEvent("expand-all");
        },

        changeAttribute: function(){
        },

        destroy: function(){
            var element = this.element;

            element.off(Metro.events.click, ".node-toggle");
            element.off(Metro.events.click, "li > .caption");
            element.off(Metro.events.dblclick, "li > .caption");
            element.off(Metro.events.click, "input[type=radio]");
            element.off(Metro.events.click, "input[type=checkbox]");

            return element;
        }
    });
}(Metro, m4q));