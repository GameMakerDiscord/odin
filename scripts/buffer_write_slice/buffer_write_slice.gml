/// buffer_write_slice(buffer, data_buffer, data_start, data_end)
/// Written by YellowAfterLife

var start = argument2;
var next = argument3 - start;
if (next <= 0) exit;
var buf = argument0;
var data = argument1;
var size = buffer_get_size(buf);
var pos = buffer_tell(buf);
var need = pos + next;
if (size < need) {
    do size *= 2 until (size >= need);
    buffer_resize(buf, size);
}
buffer_copy(data, start, next, buf, pos);
buffer_seek(buf, buffer_seek_relative, next);