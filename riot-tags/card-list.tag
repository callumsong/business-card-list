<card-list>

  <ul>
    <li each={ opts.cards } onclick="{update_showcase}">
      <p>{this.name}</p>
    </li>
  </ul>

  <showcase showcase={showcase}></showcase>

  update_showcase(e) {
    this.showcase = e.item;
  }
  
</card-list>