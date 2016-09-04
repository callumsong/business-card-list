<showcase>
  <div id="showcase-card" if={opts.showcase}>
    <p class="card-name">{opts.showcase.name}</p>
    <p class="card-company">{opts.showcase.company.name}</p>
    <p>Phone: {opts.showcase.phone}</p>
    <p>Email: <a href="mailto:{opts.showcase.email}" class="card-email">{opts.showcase.email}</a></p>
    <p>URL: <a href="http://{opts.showcase.website}">{opts.showcase.website}</a></p>
    <p>{opts.showcase.company.catchPhrase}</p>
    <p>{opts.showcase.company.bs.toUpperCase()}</p>
  </div>
</showcase>