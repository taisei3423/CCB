json.extract! board, :id, :boardtype_id, :nickname, :comment, :created_at, :updated_at
json.url board_url(board, format: :json)
