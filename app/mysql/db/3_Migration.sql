ALTER TABLE `chair`
    ADD COLUMN `in_stock` BOOLEAN
        GENERATED ALWAYS AS (`stock` > 0)
        STORED NOT NULL;

ALTER TABLE `chair`
    ADD INDEX popularity_id_idx (`popularity` DESC, `id`);
ALTER TABLE `chair`
    ADD INDEX in_stock_price_id (`in_stock`, `price`, `id`);
ALTER TABLE `estate`
    ADD INDEX popularity_id_idx (`popularity` DESC, `id`);