CREATE TABLE `Users` (
  `id` bigserial PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamptz NOT NULL DEFAULT (now()),
  `update_at` timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE `Items` (
  `id` bigserial PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamptz NOT NULL DEFAULT (now()),
  `update_at` timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE `Orders` (
  `id` bigserial PRIMARY KEY,
  `order_detail_id` bigint,
  `user_id` bigint,
  `created_at` timestamptz NOT NULL DEFAULT (now()),
  `update_at` timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE `Order_Detail` (
  `id` bigserial PRIMARY KEY,
  `item_id` bigint,
  `amount` bigint NOT NULL COMMENT 'can be negative or positive'
);

ALTER TABLE `Orders` ADD FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);

ALTER TABLE `Order_Detail` ADD FOREIGN KEY (`id`) REFERENCES `Orders` (`order_detail_id`);

ALTER TABLE `Order_Detail` ADD FOREIGN KEY (`item_id`) REFERENCES `Items` (`id`);
