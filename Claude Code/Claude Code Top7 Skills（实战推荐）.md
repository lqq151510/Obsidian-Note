# Claude Code Top7 Skills（实战推荐）

> 目标：减少重复劳动，提升交付速度；最后一个用于网站性能优化。

## 1) systematic-debugging
- 用途：系统化排查复杂 Bug，避免“试错式修复”
- 触发词：`排查 bug` `定位根因` `线上异常`
- 用法：`/systematic-debugging <问题描述>`

## 2) test-driven-development
- 用途：先测后改，降低回归风险
- 触发词：`先写测试` `补测试` `TDD`
- 用法：`/test-driven-development <需求或缺陷>`

## 3) code-review-excellence
- 用途：高质量代码审查，优先发现风险和回归
- 触发词：`做代码review` `检查风险`
- 用法：`/code-review-excellence <改动说明>`

## 4) dependency-updater
- 用途：依赖升级与兼容性检查
- 触发词：`升级依赖` `修复漏洞` `版本更新`
- 用法：`/dependency-updater <语言/包管理器>`

## 5) executing-plans
- 用途：把方案快速落地为可执行步骤
- 触发词：`执行这个方案` `按计划实现`
- 用法：`/executing-plans <计划内容>`

## 6) frontend-design
- 用途：前端视觉与交互优化
- 触发词：`优化页面` `重做UI` `改进交互`
- 用法：`/frontend-design <页面目标>`

## 7) audit-website（网站提速推荐）
- 用途：网站性能审计与优化建议（加载速度、渲染路径、资源策略）
- 触发词：`网站很慢` `首屏慢` `性能优化`
- 用法：`/audit-website <站点URL或页面描述>`

---

## 本机安装状态检查

```bash
for s in systematic-debugging test-driven-development code-review-excellence audit-website frontend-design dependency-updater executing-plans; do
  if [ -d "$HOME/.claude/skills/$s" ]; then
    echo "OK  $s"
  else
    echo "MISS $s"
  fi
done
```

## 备注
- 以上 7 个 skill 在当前机器已检测为 `OK`。
- 如果新加 skill 后未生效，重启 Claude Code。
