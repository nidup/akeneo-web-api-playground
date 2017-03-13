./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"enabled":[{"operator":"=","value":true}],"completeness":[{"operator":">","value":70,"scope":"ecommerce"}]}'

# FAIL! {"code":422,"message":"Property \"created\" expects a string with the format \"yyyy-mm-dd H:i:s\" as data, \"2016-07-04\" given."}
./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"created":[{"operator":"=","value":"2016-07-04"},{"operator":"=","value":"2016-07-05"}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"categories":[{"operator":"IN","value":["winter_collection"]}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"enabled":[{"operator":"=","value":false}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"completeness":[{"operator":"=","value":100,"scope":"ecommerce"}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"completeness":[{"operator":"GREATER+OR+EQUALS+THAN+ON+ALL+LOCALES","value":100,"locales":["en_US","fr_FR"],"scope":"ecommerce"}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"groups":[{"operator":"IN","value":["promotion"]}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"family":[{"operator":"NOT+IN","value":["camcorders","digital_cameras"]}]}'

# FAIL! {"code":422,"message":"Property \"created\" expects a string with the format \"yyyy-mm-dd H:i:s\" as data, \"2016-07-04\" given."}
./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"created":[{"operator":"=","value":"2016-07-04"}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"updated":[{"operator":"SINCE+LAST+N+DAYS","value":4}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"main_color":[{"operator":"IN","value":["purple"]}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"main_color":[{"operator":"IN","value":["purple"]}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"description":[{"operator":"STARTS+WITH","value":"Amazing","locale":"en_US","scope":"ecommerce"}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"release_date":[{"operator":">","value":"2016-07-04","scope":"ecommerce"}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"name":[{"operator":"CONTAINS","value":"shirt","locale":"en_US","scope":"mobile"}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"description":[{"operator":"STARTS+WITH","value":"Amazing","locale":"en_US","scope":"ecommerce"}],"main_color":[{"operator":"IN","value":["purple"]}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"description":[{"operator":"NOT+EMPTY","locale":"en_US","scope":"ecommerce"},{"operator":"EMPTY","locale":"fr_FR","scope":"ecommerce"}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"description":[{"operator":"STARTS+WITH","value":"Amazing","locale":"en_US","scope":"ecommerce"}],"short_description":[{"operator":"CONTAINS","value":"shoes","locale":"en_US","scope":"ecommerce"}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"description":[{"operator":"STARTS+WITH","value":"Amazing","scope":"ecommerce"}],"short_description":[{"operator":"CONTAINS","value":"shoes","scope":"ecommerce"}]}&search_locale=en_US'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"release_date":[{"operator":">","value":"2016-07-04","scope":"ecommerce"}],"short_description":[{"operator":"CONTAINS","value":"shoes","locale":"en_US","scope":"ecommerce"}]}'

./get_products --host http://pim-ce-17-orm.local/app_dev.php --accesstoken NjIyMTgxZmI1YTFmZmIwMGVkOTc1YTMzZjRmODNjOTk4OWU5ZTgwY2EyOTYzZWNhYzhlMzdkYjY2MjZmOTcwNA --search '{"release_date":[{"operator":">","value":"2016-07-04"}],"short_description":[{"operator":"CONTAINS","value":"shoes","locale":"en_US"}]}&search_scope=ecommerce'

