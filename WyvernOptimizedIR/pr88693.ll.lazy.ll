; ModuleID = './pr88693.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr88693.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { i8* (%_wyvern_thunk_type.0*)*, i8*, i1 }

@bar.u = internal global [9 x i8] c"abcdefghi", align 1
@baz.u = internal global [9 x i8] c"jklmnopqr", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i8* noundef %0) #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #6
  %.not = icmp eq i64 %2, 9
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  call void @abort() #7
  unreachable

4:                                                ; preds = %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @quux(i8* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = icmp ult i32 %.0, 100
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = load i8, i8* %6, align 1
  %.not = icmp eq i8 %7, 120
  br i1 %.not, label %9, label %8

8:                                                ; preds = %4
  call void @abort() #7
  unreachable

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

12:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @qux() #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i8* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_qux_164517989, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  call void @_wyvern_calleeclone_quux_0804239052(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
  %1 = alloca [100 x i8], align 16
  %2 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(9) %2, i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @bar.u, i64 0, i64 0), i64 9, i1 false)
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 9
  store i8 0, i8* %3, align 1
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  call void @foo(i8* noundef nonnull %4)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz() #0 {
  %1 = alloca [100 x i8], align 16
  %2 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(9) %2, i8* noundef nonnull align 1 dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @baz.u, i64 0, i64 0), i64 9, i1 false)
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 9
  store i8 0, i8* %3, align 1
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  call void @foo(i8* noundef nonnull %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @qux()
  call void @bar()
  call void @baz()
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
define i8* @_wyvern_slice_memo_qux_164517989(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i8*, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [100 x i8], align 16
  %1 = getelementptr inbounds [100 x i8], [100 x i8]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i8* %1, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_quux_0804239052(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #0 {
  br label %1

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %2 = icmp ult i32 %.0, 100
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i8* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6
  %5 = getelementptr inbounds i8, i8* %_wyvern_thunkcall, i64 %4
  %6 = load i8, i8* %5, align 1
  %.not = icmp eq i8 %6, 120
  br i1 %.not, label %8, label %7

7:                                                ; preds = %3
  call void @abort() #7
  unreachable

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8
  %10 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

11:                                               ; preds = %1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
