class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.belongs_to :owner
      # t.integer :owner_id -> owner_id라는 테이블을 사용할 것이다.
      # t.reference :owner -> 이 테이블은 owner를 참조할 것이다.
      # t.belongs_to :owner -> 이 테이블은 owner에 속해 있다.
      # 위 세 가지는 같은 기능을 가진다.

      t.timestamps
    end
  end
end
