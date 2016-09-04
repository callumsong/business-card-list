<root-tag>
  <h1>List of Business Cards</h1>

  <form onsubmit="{update_search}">
    <input type="text" name="new_filter">
    <button>Search</button>
  </form>

  <card-list cards={cards}></card-list>

  this.searchTerm = opts.searchTerm.toLowerCase();

  this.cards = opts.cards;

  update_search() {
    this.searchTerm = this.new_filter.value;

    this.cards = opts.cards.filter(function(card) {
      return card.name.toLowerCase().includes(this.searchTerm.toLowerCase());
    }.bind(this));

    this.update();

  }.bind(this)

</root-tag>