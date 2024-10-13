ALTER TABLE `isuumo.chair` ADD INDEX width_stock_idx (`width`, `stock`);
ALTER TABLE `isuumo.chair` ADD INDEX depth_stock_idx (`depth`, `stock`);
ALTER TABLE `isuumo.chair` ADD INDEX price_stock_idx (`price`, `stock`);
ALTER TABLE `isuumo.estate` ADD INDEX door_height_idx (`door_height`);
ALTER TABLE `isuumo.estate` ADD INDEX door_width_idx (`door_width`);
ALTER TABLE `isuumo.estate` ADD INDEX rent_idx (`rent`);
