{"filter":false,"title":"20200212075005_create_relationships.rb","tooltip":"/microposts/db/migrate/20200212075005_create_relationships.rb","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":10,"column":0},"action":"remove","lines":["class CreateRelationships < ActiveRecord::Migration[5.2]","  def change","    create_table :relationships do |t|","      t.references :user, foreign_key: true","      t.references :follow, foreign_key: true","","      t.timestamps","    end","  end","end",""],"id":2},{"start":{"row":0,"column":0},"end":{"row":11,"column":3},"action":"insert","lines":["class CreateRelationships < ActiveRecord::Migration[5.2]","  def change","    create_table :relationships do |t|","      t.references :user, foreign_key: true","      t.references :follow, foreign_key: { to_table: :users }","","      t.timestamps","","      t.index [:user_id, :follow_id], unique: true","    end","  end","end"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":11,"column":3},"end":{"row":11,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1581494053475,"hash":"cedf2debf914187a71420852a978a372c4f6fdf4"}