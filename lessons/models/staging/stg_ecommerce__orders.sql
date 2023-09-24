WITH source AS (
	SELECT *

	FROM {{ source('thelook_ecommerce', 'orders') }}
)

SELECT
	-- IDs
	order_id,
	user_id,
	status,
	gender,
	created_at,
	returned_at,
	delivered_at,
	shipped_at,
	num_of_item

FROM source
