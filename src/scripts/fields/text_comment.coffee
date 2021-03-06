Formbuilder.registerField 'text_comment',

  order: 20

  type: 'non_input'

  view: """
    <label class="preview-only">Text Comment</label>
    <p><%= rf.get(Formbuilder.options.mappings.DESCRIPTION) %></p>
  """

  edit: """
    <div class='fb-label-description'>
      <div class='fb-edit-section-header'>Text</div>
      <textarea data-rv-input='model.<%= Formbuilder.options.mappings.DESCRIPTION %>'
        placeholder='Add some text'></textarea>
    </div>
  """

  addButton: """
    <span class='symbol'><span class='fa fa-font'></span></span> Text Comment
  """

  defaultAttributes: (attrs) ->
    _.pathAssign(attrs, Formbuilder.options.mappings.LABEL, 'Text Comment')

    attrs
