# Simple Blog

## 1. new
- get '/' => erb :index,
- <form>을 통해 제목(tile), 내용(content) 입력

## 2.Create
- get 'write' => erb :write,
- File.open을 통해 내용 쓰기

## 3. Read
- get 'show' => erb :show
- File.open을 통해 모든 블로그 내용 읽기
