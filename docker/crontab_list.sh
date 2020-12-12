#必须要的默认定时任务请勿删除
52 */1 * * * sh /dailycheckin/docker/default_task.sh >> /dailycheckin/logs/default_task.log 2>&1
# 每 3 天的 23:50 分清理一次日志
50 23 */3 * * rm -rf /dailycheckin/logs/*.log


##############每日签到一次任务##############
# 每日签到(8：45 执行一次)
45 9 * * * python /dailycheckin/index.py >> /dailycheckin/logs/dailycheckin.log 2>&1

##############每日签到定时任务##############
# 企鹅读书
*/11 * * * * python /dailycheckin/index.py qqread >> /dailycheckin/logs/qqread.log 2>&1
# 喜马拉雅极速版
*/30 * * * * python /dailycheckin/index.py xmly >> /dailycheckin/logs/xmly.log 2>&1
