Item table
| カラム    | 意味      |
| ------ | ------- |
| id     | 商品ID    |
| name   | 商品名     |
| gender | 男性/女性向け |
| price  | 販売価格    |
| cost   | 原価      |

sales_record table
| カラム          | 意味     |
| ------------ | ------ |
| id           | 購入ID   |
| item_id      | 商品ID   |
| user_id      | ユーザーID |
| purchased_at | 購入日    |

users table
| カラム    | 意味     |
| ------ | ------ |
| id     | ユーザーID |
| name   | 名前     |
| gender | 性別     |
| age    | 年齢     |

---

問題①（JOIN基礎）

「購入された商品名をすべて表示してください」

select i.name
from sales_record s
join item I
on s.item.id = i.id;

---

問題②（JOIN + ユーザー）

「誰がどの商品を買ったか表示してください」

select u.name,
       i.name
from sales_record s
join users u
on u.id = s.user_id
join item i 
on s.item_id = i.id

---

問題③（集計）

「商品ごとの購入回数を出してください」

select i.name,
       COUNT(*) as purchase_count
from sales_record s
join item i 
on s.item_id = i.id
group by i.name;

---

問題④（売上）

「商品ごとの売上合計を出してください」
select i.name
       SUM(i.price) as total_sales
from sales_record s
join item i 
on s.item_id = i.id
group by i.name;

---

問題⑤（利益）

「商品ごとの利益合計を出してください」

select i.name
       sum(i.price - i.cost) as total_profit
from sales_record s 
join item i 
on s.item_id = i.id
grop by i.name;

---

問題⑥（年齢分析）

「年代別の購入回数を出してください」

ヒント：10代、20代など

select (u.age / 10) * 10 as age_group,
       count(*) as purchase_count
from sales_record s 
join users u
on s.user_id = u.id
gropu by age_group;

---

問題⑦（条件付き）

「女性向け商品の売上合計を出してください」

select SUM(i.price) as total_sales
from sales_record s 
join item i 
on s.item_id = i.id
group by i.gender = 2;

---


問題⑧

「一番売れている商品を出してください」

select i.name,
       count(*) as purchase_count
from sales_record s 
join item i 
on s.item.id = i.id
group by i.name
order by purchase_count DESC
LIMIT 1;

---


問題⑨（ユーザー分析）

「最も購入回数が多いユーザーを出してください」

select u.name,
       count(*) as purchanse_count
from sales_record s
join users u 
on s.user.id = u.id
group by u.name
group by purchase_count DESC
limit 1;