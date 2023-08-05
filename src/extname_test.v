module bpath

fn test_empty() {
	out := extname('')
	assert out == ''
}

fn test_name() {
	out := extname('a')
	assert out == ''
}

fn test_ext() {
	out := extname('.a')
	assert out == ''
}

fn test_name_with_dot() {
	out := extname('a.')
	assert out == '.'
}

fn test_name_with_dot_and_slash() {
	out := extname('a./')
	assert out == '.'
}

fn test_name_with_dot_and_backslash() {
	out := extname('a.\\')
	assert out == '.'
}

fn test_name_with_ext() {
	out := extname('a.b')
	assert out == '.b'
}

fn test_name_with_ext_and_slash() {
	out := extname('a.b/')
	assert out == '.b'
}

fn test_name_with_ext_and_two_slashes() {
	out := extname('a.b//')
	assert out == '.b'
}

fn test_name_with_ext_and_two_backslashes() {
	out := extname('a.b\\\\')
	assert out == '.b'
}

fn test_slash_before_dot() {
	out := extname('/.a')
	assert out == ''
}

fn test_backslash_before_dot() {
	out := extname('\\.a')
	assert out == ''
}
