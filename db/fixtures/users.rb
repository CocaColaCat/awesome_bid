# encoding: utf-8

User.seed(:id,
  { "id" => 1, "email" => "product_owner@example.com", 'role' => 0 },
	{ "id" => 2, "email" => "visitor@example.com", 'role' => 1 }
)
