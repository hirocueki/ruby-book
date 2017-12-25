def convert_hash_sysntax(old_syntax)
    old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end