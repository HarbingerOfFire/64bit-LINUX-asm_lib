%ifndef STD_ERR
    %define STD_ERR

exit:
	mov rdi, rax
	mov rax, 60
	syscall
	ret

success:
	mov rax, EXIT_SUCCESS
	call exit
	ret

error:
	mov rax, EXIT_ERROR
	call exit
	ret 

mmap_error:
	mov rax, 12
	call exit
	ret

%endif
