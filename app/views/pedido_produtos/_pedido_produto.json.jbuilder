json.extract! pedido_produto, :id, :pedido_id, :valor, :quantidade, :produto_id, :created_at, :updated_at
json.url pedido_produto_url(pedido_produto, format: :json)
