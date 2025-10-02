; ModuleID = './20080122-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20080122-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%_wyvern_thunk_type.0 = type { i8* (%_wyvern_thunk_type.0*)*, i8*, i1 }

@__const.main.outbuf = private unnamed_addr constant [32 x i8] c"buffer     \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.main.inbuf = private unnamed_addr constant [32 x i8] c"\0C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %3 = alloca [32 x i8], align 16
  %4 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %4, i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @__const.main.outbuf, i64 0, i64 0), i64 32, i1 false)
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !4
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i8* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_main_274224020, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  call void @_wyvern_calleeclone_do_segfault_0889943189(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i8* noundef nonnull %5, i32 noundef 12)
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @do_segfault(i8* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %23, %3
  %.0 = phi i32 [ 0, %3 ], [ %24, %23 ]
  %5 = icmp slt i32 %.0, %2
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !6
  %7 = shl nuw nsw i32 %.0, 1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %1, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = shl nuw nsw i32 %.0, 1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %0, i64 %12
  store i8 %10, i8* %13, align 1
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !7
  %14 = shl nuw nsw i32 %.0, 1
  %15 = or i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %1, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = shl nuw nsw i32 %.0, 1
  %20 = or i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %0, i64 %21
  store i8 %18, i8* %22, align 1
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !8
  br label %23

23:                                               ; preds = %6
  %24 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !9

25:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i8* @_wyvern_slice_memo_main_274224020(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #2 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i8*, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [32 x i8], align 16
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i8* %1, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_do_segfault_0889943189(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i8* nocapture noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %22, %2
  %.0 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !6
  %6 = shl nuw nsw i32 %.0, 1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = shl nuw nsw i32 %.0, 1
  %11 = zext i32 %10 to i64
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i8* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  %12 = getelementptr inbounds i8, i8* %_wyvern_thunkcall3, i64 %11
  store i8 %9, i8* %12, align 1
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !7
  %13 = shl nuw nsw i32 %.0, 1
  %14 = or i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = shl nuw nsw i32 %.0, 1
  %19 = or i32 %18, 1
  %20 = zext i32 %19 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i8* (%_wyvern_thunk_type.0*)*, i8* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i8* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3
  %21 = getelementptr inbounds i8, i8* %_wyvern_thunkcall, i64 %20
  store i8 %17, i8* %21, align 1
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !8
  br label %22

22:                                               ; preds = %5
  %23 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !9

24:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { nounwind readonly willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 536}
!5 = !{i64 581}
!6 = !{i64 260}
!7 = !{i64 343}
!8 = !{i64 426}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
