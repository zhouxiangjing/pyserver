# pyserver
pyserver

创建或更新设备：POST/api/devices
获取设备：GET/api/devices
获取在线设备：GET/api/online_devices

后端API包括：
获取日志：GET/api/blogs
创建日志：POST/api/blogs
修改日志：POST/api/blogs/:blog_id
删除曰志：POST/api/blogs/:blog_id/delete
获取评论：GET/api/comments
创建评论：POST/api/blogs/:blog_id/comments
刪除评论：PST/api/comments/:comment_id/delete
创建新用户：POST/api/users
获取用户：GET/api/users

管理页面包括：
评论列表：GET/manage/comments
日志列表：GET/manage/blogs
创建日志：GET/manage/blogs/create
修改日志：GET/manage/blogs/
用户列表：GET/manage/users
用户浏览页面包括：
注册员：GET/register
登录员：GET/signin
注销页：GET/signout
首页：GET/
日志详情页：GET/blog/:log_id


pip install fabric

pip install
aiohttp aiomysql

iZ2zecsdy8flu603bmdg1bZ