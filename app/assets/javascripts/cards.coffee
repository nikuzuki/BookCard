window.delData = (id, title)->
  if confirm('「' + title + '」のデータを削除しますか？')
    document.location = "/cards/delete" + id;
    return false;
