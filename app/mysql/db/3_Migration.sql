ALTER TABLE `chair` ADD INDEX width_stock_popularity_id_idx (`width`, `stock`, `popularity` DESC, `id`);
ALTER TABLE `chair` ADD INDEX height_stock_popularity_id_idx (`height`, `stock`, `popularity` DESC, `id`);
ALTER TABLE `chair` ADD INDEX depth_stock_popularity_id_idx (`depth`, `stock`, `popularity` DESC, `id`);
ALTER TABLE `estate` ADD INDEX door_width_popularity_id_idx (`door_width`, `popularity` DESC, `id`);
ALTER TABLE `estate` ADD INDEX door_height_popularity_id_idx (`door_height`, `popularity` DESC, `id`);
