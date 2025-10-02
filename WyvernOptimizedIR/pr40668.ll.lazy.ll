; ModuleID = './pr40668.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr40668.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { i8* (%_wyvern_thunk_type.0*)*, i8*, i1 }

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @bar(i32 noundef %0, i8* nocapture noundef writeonly %1) #0 {
  switch i32 %0, label %7 [
    i32 1, label %3
    i32 7, label %4
    i32 8, label %5
    i32 9, label %6
  ]

3:                                                ; preds = %2
  call void @foo(i32 noundef 305419896, i8* noundef %1)
  br label %7

4:                                                ; preds = %2
  call void @foo(i32 noundef 0, i8* noundef %1)
  br label %7

5:                                                ; preds = %2
  call void @foo(i32 noundef 0, i8* noundef %1)
  br label %7

6:                                                ; preds = %2
  call void @foo(i32 noundef 0, i8* noundef %1)
  br label %7

7:                                                ; preds = %6, %5, %4, %3, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal void @foo(i32 noundef %0, i8* nocapture noundef writeonly %1) #0 {
  %3 = bitcast i8* %1 to i32*
  store i32 %0, i32* %3, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %1 = alloca i32, align 4
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i8* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_main_734643940, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  call void @_wyvern_calleeclone_bar_1921701722(i32 noundef 1, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  %2 = load i32, i32* %1, align 4
  %.not = icmp eq i32 %2, 305419896
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #5
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
define i8* @_wyvern_slice_memo_main_734643940(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i8*, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca i32, align 4
  %1 = bitcast i32* %0 to i8*
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  %2 = bitcast i8** %_wyvern_memo_val_addr to i32**
  store i32* %0, i32** %2, align 8
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @_wyvern_calleeclone_bar_1921701722(i32 noundef %0, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #0 {
  switch i32 %0, label %6 [
    i32 1, label %2
    i32 7, label %3
    i32 8, label %4
    i32 9, label %5
  ]

2:                                                ; preds = %1
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call i8* %_wyvern_thunkfptr8(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  call void @foo(i32 noundef 305419896, i8* noundef %_wyvern_thunkcall9)
  br label %6

3:                                                ; preds = %1
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i8* %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  call void @foo(i32 noundef 0, i8* noundef %_wyvern_thunkcall6)
  br label %6

4:                                                ; preds = %1
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i8* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  call void @foo(i32 noundef 0, i8* noundef %_wyvern_thunkcall3)
  br label %6

5:                                                ; preds = %1
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i8* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  call void @foo(i32 noundef 0, i8* noundef %_wyvern_thunkcall)
  br label %6

6:                                                ; preds = %5, %4, %3, %2, %1
  ret void
}

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
