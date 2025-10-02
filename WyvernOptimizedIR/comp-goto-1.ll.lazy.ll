; ModuleID = './comp-goto-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/comp-goto-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.insn_t = type { %struct.anon }
%struct.anon = type { i64 }
%struct.environment_t = type { %union.insn_t*, [256 x i32], %union.insn_t*, [256 x %struct.tlb_entry_t] }
%struct.tlb_entry_t = type { i32, i64 }

@simulator_kernel.op_map = internal global [2 x i8*] [i8* blockaddress(@simulator_kernel, %39), i8* blockaddress(@simulator_kernel, %83)], align 16
@program = dso_local global [3 x %union.insn_t] zeroinitializer, align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i64 @f() #0 {
  call void @abort() #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @simulator_kernel(i32 noundef %0, %struct.environment_t* nocapture noundef %1) #2 {
  %3 = alloca %union.insn_t, align 8
  %4 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %1, i64 0, i32 0
  %5 = load %union.insn_t*, %union.insn_t** %4, align 8
  %6 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %1, i64 0, i32 1, i64 0
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %1, i64 0, i32 2
  %9 = load %union.insn_t*, %union.insn_t** %8, align 8
  br label %10

10:                                               ; preds = %28, %7
  %.01 = phi i32 [ 0, %7 ], [ %29, %28 ]
  %11 = icmp slt i32 %.01, %0
  br i1 %11, label %12, label %30

12:                                               ; preds = %10
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds %union.insn_t, %union.insn_t* %9, i64 %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = shl i64 %15, 46
  %17 = ashr exact i64 %16, 46
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* @simulator_kernel.op_map, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = sub i64 %20, zext (i32 ptrtoint (i8* blockaddress(@simulator_kernel, %32) to i32) to i64)
  %22 = zext i32 %.01 to i64
  %23 = getelementptr inbounds %union.insn_t, %union.insn_t* %9, i64 %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %21, 262143
  %26 = and i64 %24, -262144
  %27 = or i64 %26, %25
  store i64 %27, i64* %23, align 8
  br label %28

28:                                               ; preds = %12
  %29 = add nuw nsw i32 %.01, 1
  br label %10, !llvm.loop !4

30:                                               ; preds = %10
  br label %31

31:                                               ; preds = %30, %2
  br label %32

32:                                               ; preds = %89, %31
  %.02 = phi %union.insn_t* [ %5, %31 ], [ %.1, %89 ]
  %33 = getelementptr %union.insn_t, %union.insn_t* %.02, i64 0, i32 0, i32 0
  %34 = getelementptr inbounds %union.insn_t, %union.insn_t* %3, i64 0, i32 0, i32 0
  %35 = load i64, i64* %33, align 8
  store i64 %35, i64* %34, align 8
  %36 = bitcast i32* %6 to i8*
  %sh.diff = lshr i64 %35, 52
  %37 = and i64 %sh.diff, 1020
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  br label %89

39:                                               ; preds = %89
  %40 = lshr i32 %.03, 12
  %41 = getelementptr %union.insn_t, %union.insn_t* %.1, i64 0, i32 0, i32 0
  %42 = getelementptr inbounds %union.insn_t, %union.insn_t* %3, i64 0, i32 0, i32 0
  %43 = load i64, i64* %41, align 8
  store i64 %43, i64* %42, align 8
  br label %44

44:                                               ; preds = %81, %39
  %.0.in = phi i32 [ %40, %39 ], [ %82, %81 ]
  %.0 = and i32 %.0.in, 255
  %45 = zext i32 %.0 to i64
  %46 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %1, i64 0, i32 3, i64 %45, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, %40
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = zext i32 %.0 to i64
  %51 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %1, i64 0, i32 3, i64 %50, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = zext i32 %.03 to i64
  %54 = add i64 %52, %53
  %55 = inttoptr i64 %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = bitcast i32* %6 to i8*
  %58 = zext i32 %.04 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = bitcast i8* %59 to i32*
  store i32 %56, i32* %60, align 4
  %61 = bitcast i32* %6 to i8*
  %62 = getelementptr inbounds %union.insn_t, %union.insn_t* %3, i64 0, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %sh.diff8 = lshr i64 %63, 52
  %64 = and i64 %sh.diff8, 1020
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  br label %.backedge

.backedge:                                        ; preds = %49, %68
  %.04.be.in.in.in = phi i64 [ %63, %49 ], [ %78, %68 ]
  %.03.be.in.in = phi i8* [ %65, %49 ], [ %80, %68 ]
  br label %89

66:                                               ; preds = %44
  %67 = icmp slt i32 %47, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %66
  %69 = call i64 @f()
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = bitcast i32* %6 to i8*
  %73 = zext i32 %.04 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = bitcast i8* %74 to i32*
  store i32 %71, i32* %75, align 4
  %76 = bitcast i32* %6 to i8*
  %77 = getelementptr inbounds %union.insn_t, %union.insn_t* %3, i64 0, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %sh.diff6 = lshr i64 %78, 52
  %79 = and i64 %sh.diff6, 1020
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  br label %.backedge

81:                                               ; preds = %66
  %82 = add nuw nsw i32 %.0, 255
  br label %44

83:                                               ; preds = %89
  %84 = bitcast i32* %6 to i8*
  %85 = zext i32 %.04 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = bitcast i8* %86 to i32*
  %88 = load i32, i32* %87, align 4
  ret i32 %88

89:                                               ; preds = %.backedge, %32
  %.04.in.in.in = phi i64 [ %35, %32 ], [ %.04.be.in.in.in, %.backedge ]
  %.03.in.in = phi i8* [ %38, %32 ], [ %.03.be.in.in, %.backedge ]
  %.02.pn = phi %union.insn_t* [ %.02, %32 ], [ %.1, %.backedge ]
  %.pn7.in = shl i64 %.04.in.in.in, 46
  %.pn7 = ashr exact i64 %.pn7.in, 46
  %.04.in.in = trunc i64 %.04.in.in.in to i32
  %.04.in = lshr i32 %.04.in.in, 20
  %.04 = and i32 %.04.in, 1020
  %90 = getelementptr i8, i8* blockaddress(@simulator_kernel, %32), i64 %.pn7
  %.03.in = bitcast i8* %.03.in.in to i32*
  %.03 = load i32, i32* %.03.in, align 4
  %.1 = getelementptr inbounds %union.insn_t, %union.insn_t* %.02.pn, i64 1
  indirectbr i8* %90, [label %32, label %39, label %83]
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.environment_t, align 8
  %2 = alloca %union.insn_t, align 8
  %3 = call noalias dereferenceable_or_null(8192) i8* @malloc(i64 noundef 8192) #6
  %4 = ptrtoint i8* %3 to i64
  %5 = add i64 %4, 4095
  %6 = and i64 %5, -4096
  %7 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %1, i64 0, i32 3, i64 35, i32 0
  store i32 291, i32* %7, align 8
  %8 = add i64 %6, -1191936
  %9 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %1, i64 0, i32 3, i64 35, i32 1
  store i64 %8, i64* %9, align 8
  %10 = getelementptr inbounds %union.insn_t, %union.insn_t* %2, i64 0, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = and i64 %11, -262144
  store i64 %12, i64* %10, align 8
  %13 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %1, i64 0, i32 1, i64 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %1, i64 0, i32 1, i64 2
  store i32 1193040, i32* %14, align 8
  %15 = or i64 %6, 1104
  %16 = inttoptr i64 %15 to i32*
  store i32 88, i32* %16, align 16
  %17 = getelementptr inbounds %union.insn_t, %union.insn_t* %2, i64 0, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %union.insn_t, %union.insn_t* %2, i64 0, i32 0, i32 0
  %20 = and i64 %18, -4593671620987453441
  %21 = or i64 %20, 36028797018963968
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %29, %0
  %.0 = phi i32 [ 0, %0 ], [ %30, %29 ]
  %23 = icmp ult i32 %.0, 2
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds %union.insn_t, %union.insn_t* %2, i64 0, i32 0, i32 0
  %27 = getelementptr inbounds [3 x %union.insn_t], [3 x %union.insn_t]* @program, i64 0, i64 %25, i32 0, i32 0
  %28 = load i64, i64* %26, align 8
  store i64 %28, i64* %27, align 8
  br label %29

29:                                               ; preds = %24
  %30 = add nuw nsw i32 %.0, 1
  br label %22, !llvm.loop !6

31:                                               ; preds = %22
  %32 = getelementptr inbounds %union.insn_t, %union.insn_t* %2, i64 0, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %union.insn_t, %union.insn_t* %2, i64 0, i32 0, i32 0
  %35 = and i64 %33, -1069809664
  %36 = or i64 %35, 1
  store i64 %36, i64* %34, align 8
  store i64 %36, i64* getelementptr inbounds ([3 x %union.insn_t], [3 x %union.insn_t]* @program, i64 0, i64 2, i32 0, i32 0), align 16
  %37 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %1, i64 0, i32 0
  store %union.insn_t* getelementptr inbounds ([3 x %union.insn_t], [3 x %union.insn_t]* @program, i64 0, i64 0), %union.insn_t** %37, align 8
  %38 = getelementptr inbounds %struct.environment_t, %struct.environment_t* %1, i64 0, i32 2
  store %union.insn_t* getelementptr inbounds ([3 x %union.insn_t], [3 x %union.insn_t]* @program, i64 0, i64 0), %union.insn_t** %38, align 8
  %39 = call i32 @simulator_kernel(i32 noundef 3, %struct.environment_t* noundef nonnull %1)
  %.not = icmp eq i32 %39, 88
  br i1 %.not, label %41, label %40

40:                                               ; preds = %31
  call void @abort() #5
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %31
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %41, %40
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
