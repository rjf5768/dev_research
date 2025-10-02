; ModuleID = './pr65956.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65956.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i8*, i32, i64 }
%_wyvern_thunk_type.4 = type { %struct.A* (%_wyvern_thunk_type.4*)*, %struct.A*, i1 }

@v = dso_local global [3 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@__const.main.a = private unnamed_addr constant [3 x %struct.A] [%struct.A { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @v, i32 0, i64 1), i32 1, i64 1 }, %struct.A { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @v, i32 0, i32 0), i32 0, i64 0 }, %struct.A { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @v, i32 0, i64 2), i32 2, i64 2 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn1(i8* noundef readnone %0, i8* noundef readnone %1) #0 {
  %.not = icmp eq i8* %0, getelementptr inbounds ([3 x i8], [3 x i8]* @v, i64 0, i64 1)
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  %.not1 = icmp eq i8* %1, getelementptr inbounds ([3 x i8], [3 x i8]* @v, i64 0, i64 2)
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %3, %2
  call void @abort() #5
  unreachable

5:                                                ; preds = %3
  %6 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @v, i64 0, i64 1), align 1
  %7 = add i8 %6, 1
  store i8 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @v, i64 0, i64 1), align 1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn2(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void asm sideeffect "", "=*imr,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i8** nonnull elementtype(i8*) %2, i8* %0) #6, !srcloc !4
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, getelementptr inbounds ([3 x i8], [3 x i8]* @v, i64 0, i64 0)
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn3(i8* nocapture noundef readonly %0) #0 {
  %2 = load i8, i8* %0, align 1
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  call void @abort() #5
  unreachable

4:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0, %struct.A* nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.A, align 8
  %4 = alloca %struct.A, align 8
  switch i32 %0, label %9 [
    i32 219, label %5
    i32 220, label %7
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.A, %struct.A* %1, i64 -2
  call void @foo(%struct.A* nonnull sret(%struct.A) align 8 %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.A* noundef nonnull byval(%struct.A) align 8 %6, %struct.A* noundef byval(%struct.A) align 8 %1)
  br label %7

7:                                                ; preds = %5, %2
  %8 = getelementptr inbounds %struct.A, %struct.A* %1, i64 -2
  call void @foo(%struct.A* nonnull sret(%struct.A) align 8 %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.A* noundef nonnull byval(%struct.A) align 8 %8, %struct.A* noundef byval(%struct.A) align 8 %1)
  br label %9

9:                                                ; preds = %7, %2
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(%struct.A* noalias nocapture writeonly sret(%struct.A) align 8 %0, i8* nocapture noundef readonly %1, %struct.A* nocapture noundef readonly byval(%struct.A) align 8 %2, %struct.A* nocapture noundef readonly byval(%struct.A) align 8 %3) #0 {
  %5 = bitcast %struct.A* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %6 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 1
  %7 = load i32, i32* %6, align 8
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 1
  %10 = load i32, i32* %9, align 8
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %30, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @fn2(i8* noundef %13)
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @fn2(i8* noundef %17)
  %.not3 = icmp eq i32 %18, 0
  br i1 %.not3, label %25, label %19

19:                                               ; preds = %15
  %20 = load i8, i8* %1, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %23 [
    i32 124, label %22
  ]

22:                                               ; preds = %19
  br label %24

23:                                               ; preds = %19
  call void @fn3(i8* noundef nonnull %1)
  br label %24

24:                                               ; preds = %23, %22
  br label %25

25:                                               ; preds = %24, %15, %11
  %26 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.A, %struct.A* %3, i64 0, i32 0
  %29 = load i8*, i8** %28, align 8
  call void @fn1(i8* noundef %27, i8* noundef %29)
  br label %30

30:                                               ; preds = %25, %8, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.4, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct.A* (%_wyvern_thunk_type.4*)* @_wyvern_slice_memo_main_220953074, %struct.A* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %1 = call i32 @_wyvern_calleeclone_bar_1163680805(i32 noundef 220, %_wyvern_thunk_type.4* noundef nonnull %_wyvern_thunk_alloca)
  %2 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @v, i64 0, i64 1), align 1
  %.not = icmp eq i8 %2, 1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #5
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
define %struct.A* @_wyvern_slice_memo_main_220953074(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #4 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load %struct.A*, %struct.A** %_wyvern_memo_val_addr, align 8
  ret %struct.A* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [3 x %struct.A], align 16
  %1 = getelementptr inbounds [3 x %struct.A], [3 x %struct.A]* %0, i64 0, i64 2
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct.A* %1, %struct.A** %_wyvern_memo_val_addr, align 8
  ret %struct.A* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_bar_1163680805(i32 noundef %0, %_wyvern_thunk_type.4* noundef %_wyvern_thunkptr) #0 {
  %2 = alloca %struct.A, align 8
  %3 = alloca %struct.A, align 8
  switch i32 %0, label %8 [
    i32 219, label %4
    i32 220, label %6
  ]

4:                                                ; preds = %1
  %_wyvern_thunk_fptr_addr7 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr8 = load %struct.A* (%_wyvern_thunk_type.4*)*, %struct.A* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr7, align 8
  %_wyvern_thunkcall9 = call %struct.A* %_wyvern_thunkfptr8(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #6
  %5 = getelementptr inbounds %struct.A, %struct.A* %_wyvern_thunkcall9, i64 -2
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load %struct.A* (%_wyvern_thunk_type.4*)*, %struct.A* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call %struct.A* %_wyvern_thunkfptr5(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #6
  call void @foo(%struct.A* nonnull sret(%struct.A) align 8 %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.A* noundef nonnull byval(%struct.A) align 8 %5, %struct.A* noundef byval(%struct.A) align 8 %_wyvern_thunkcall6)
  br label %6

6:                                                ; preds = %4, %1
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load %struct.A* (%_wyvern_thunk_type.4*)*, %struct.A* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call %struct.A* %_wyvern_thunkfptr2(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #6
  %7 = getelementptr inbounds %struct.A, %struct.A* %_wyvern_thunkcall3, i64 -2
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct.A* (%_wyvern_thunk_type.4*)*, %struct.A* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct.A* %_wyvern_thunkfptr(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #6
  call void @foo(%struct.A* nonnull sret(%struct.A) align 8 %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.A* noundef nonnull byval(%struct.A) align 8 %7, %struct.A* noundef byval(%struct.A) align 8 %_wyvern_thunkcall)
  br label %8

8:                                                ; preds = %6, %1
  ret i32 undef
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 285}
