ALTER TABLE `chair`
    ADD COLUMN `in_stock` BOOLEAN
        GENERATED ALWAYS AS (`stock` > 0)
        STORED NOT NULL;

ALTER TABLE `estate`
    ADD COLUMN `pt` POINT
        GENERATED ALWAYS AS (ST_SRID(POINT(`latitude`, `longitude`), 4326))
        STORED NOT NULL INVISIBLE;
ALTER TABLE `estate` MODIFY COLUMN `pt` POINT SRID 4326 NOT NULL INVISIBLE;

ALTER TABLE `chair`
    ADD INDEX popularity_id_idx (`popularity` DESC, `id`);
ALTER TABLE `chair`
    ADD INDEX in_stock_price_id (`in_stock`, `price`, `id`);
ALTER TABLE `chair`
    ADD INDEX height_in_stock (`height`, `in_stock`);
ALTER TABLE `chair`
    ADD INDEX width_in_stock (`width`, `in_stock`);
ALTER TABLE `chair`
    ADD INDEX color_in_stock (`color`, `in_stock`);
ALTER TABLE `chair`
    ADD INDEX kind_in_stock (`kind`, `in_stock`);
ALTER TABLE `chair`
    ADD INDEX depth_in_stock (`depth`, `in_stock`);
ALTER TABLE `estate`
    ADD INDEX popularity_id_idx (`popularity` DESC, `id`);
ALTER TABLE `estate`
    ADD INDEX rent_id_idx (`rent`, `id`);
ALTER TABLE `estate`
    ADD INDEX door_height (`door_height`);
ALTER TABLE `estate`
    ADD INDEX door_width (`door_width`);
ALTER TABLE `estate`
    ADD SPATIAL INDEX point_idx (`pt`);
