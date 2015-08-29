<!-- <form action="/item_orders/<%= dish.item_order.id %>" method="post">
  <input type="hidden" name="_method" value="delete">
  <input type="submit" value="Give Away">
</form> -->


<ul>

  <% @dishes.each do |dish| %>
  <li>
    <%=dish.name%> -- <%=dish.price%>
    <form action="/item_orders/<%= dish.party.item_order.id %>" method="post">
      <input type="hidden" name="_method" value="delete">
      <input type="submit" value="Give Away">
    </form>
  </li>
  <%end%>


  <nav>
    <div class="nav-wrapper">
      <a href="/" class="brand-logo center">Gadoe</a>
      <ul id="nav-mobile" class="left hide-on-med-and-down">
        <li><a href="/dishes">Menu</a></li>
        <li><a href="/item_orders/new">Add New Order</a></li>
      </ul>
    </div>
  </nav>








      <table>
        <thead>
          <tr>
              <th data-field="id">Name</th>
              <th data-field="name">Item Name</th>
              <th data-field="price">Item Price</th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td>Alvin</td>
            <td>Eclair</td>
            <td>$0.87</td>
          </tr>
          <tr>
            <td>Alan</td>
            <td>Jellybean</td>
            <td>$3.76</td>
          </tr>
          <tr>
            <td>Jonathan</td>
            <td>Lollipop</td>
            <td>$7.00</td>
          </tr>
        </tbody>
      </table>



      <ul>
        <% @item_orders.each do |item_order| %>
        <li>
          <%= item_order.dish.name %> -- <%=item_order.dish.price%>
          <form action="/item_orders/<%=item_order.id %>" method="post">
            <input type="hidden" name="_method" value="delete">
            <button class="btn waves-effect waves-light" type="submit" name="action">
            <i class="material-icons">delete</i>
            </button>
          </form>
          </li>
        <% end %>

      </ul>


      <h2>  Total is <%= @total %> </h2>
