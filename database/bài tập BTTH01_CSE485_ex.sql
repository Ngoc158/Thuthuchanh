a SELECT * FROM baiviet WHERE ma_tloai=2;
b SELECT * FROM baiviet WHERE ma_tgia=1;

c SELECT ten_tloai FROM theloai WHERE ma_tloai NOT IN (SELECT ma_tloai FROM baiviet);

d SELECT ma_bviet,tieude,ten_bhat,tacgia.ten_tgia,theloai.ten_tloai,ngayviet
FROM tacgia, baiviet, theloai
WHERE tacgia.ma_tgia=baiviet.ma_tgia AND theloai.ma_tloai=baiviet.ma_tloai;

e SELECT * FROM theloai WHERE ma_tloai IN (
    SELECT ma_tloai FROM (
        SELECT ma_tloai, COUNT(*) AS so_luong FROM baiviet
        GROUP BY ma_tloai
        ORDER BY so_luong DESC
        LIMIT 1) AS tb_tloai_max
)

f:
SELECT * FROM tacgia WHERE ma_tgia IN (
    SELECT ma_tgia FROM (
        SELECT ma_tgia, COUNT(*) AS so_luong FROM baiviet
        GROUP BY ma_tgia
        ORDER BY so_luong DESC
        LIMIT 2
    ) AS tb_tgia_max
)
g SELECT * FROM baiviet where ten_bhat like  '%thương%' or ten_bhat LIKE '%anh%' or ten_bhat LIKE '%em%' OR ten_bhat LIKE '%yêu%';

h SELECT * FROM baiviet where ten_bhat  like  '%thương%' or ten_bhat LIKE '%anh%' or ten_bhat LIKE '%em%' OR ten_bhat LIKE '%yêu%' AND tieude LIKE'%thương%' or tieude LIKE '%anh%' or tieude LIKE '%em%' OR tieude LIKE '%yêu%';

