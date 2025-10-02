; ModuleID = './literal.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/treecc/literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._tagTreeCCContext = type { [512 x %struct._tagTreeCCNode*], [512 x %struct._tagTreeCCOperation*], %struct.TreeCCInput*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream*, i16, i8*, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct._tagTreeCCNode = type { %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, %struct._tagTreeCCNode*, i8*, i32, i32, i32, i8*, i64, %struct._tagTreeCCField*, %struct._tagTreeCCVirtual*, %struct._tagTreeCCNode*, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCField = type { i8*, i8*, i8*, i32, i8*, i64, %struct._tagTreeCCField* }
%struct._tagTreeCCVirtual = type { i8*, i8*, %struct._tagTreeCCParam*, %struct._tagTreeCCOperation*, %struct._tagTreeCCVirtual* }
%struct._tagTreeCCParam = type { i8*, i8*, i32, i32, %struct._tagTreeCCParam* }
%struct._tagTreeCCOperation = type { i8*, i8*, i8*, i8*, %struct._tagTreeCCParam*, i32, i32, i8*, i64, %struct._tagTreeCCOperation*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase**, i32, %struct._tagTreeCCStream*, %struct._tagTreeCCStream* }
%struct._tagTreeCCOperationCase = type { %struct._tagTreeCCTrigger*, i8*, %struct._tagTreeCCOperation*, i32, i8*, i64, i8*, i64, %struct._tagTreeCCOperationCase*, %struct._tagTreeCCOperationCase* }
%struct._tagTreeCCTrigger = type { %struct._tagTreeCCNode*, %struct._tagTreeCCTrigger* }
%struct.TreeCCInput = type { i32, i8*, i8*, %struct._IO_FILE*, i8*, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._tagTreeCCStream = type { %struct._tagTreeCCContext*, i8*, i8*, i64, %struct._tagTreeCCStreamBuf*, %struct._tagTreeCCStreamBuf*, i32, i8, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStreamDefn*, %struct._tagTreeCCStream* }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], %struct._tagTreeCCStreamBuf* }
%struct._tagTreeCCStreamDefn = type { i8*, i8*, i64, i32, i32, %struct._tagTreeCCStreamDefn* }

@.str = private unnamed_addr constant [16 x i8] c"%%literal %d %s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @TreeCCAddLiteralDefn(%struct._tagTreeCCContext* nocapture noundef readonly %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 8
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 1
  %.not = icmp eq i16 %6, 0
  br i1 %.not, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 2
  %9 = load %struct.TreeCCInput*, %struct.TreeCCInput** %8, align 8
  %10 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %9, i64 0, i32 5
  %11 = load i64, i64* %10, align 8
  call void (i64, i8*, ...) @TreeCCDebug(i64 noundef %11, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %2, i8* noundef %1) #2
  br label %12

12:                                               ; preds = %7, %3
  %13 = and i32 %2, 1
  %.not1 = icmp eq i32 %13, 0
  br i1 %.not1, label %35, label %14

14:                                               ; preds = %12
  %15 = and i32 %2, 2
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %35, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 4
  %18 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %17, align 8
  %19 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 2
  %20 = load %struct.TreeCCInput*, %struct.TreeCCInput** %19, align 8
  %21 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %20, i64 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %20, i64 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = lshr i32 %2, 2
  %.lobit5 = and i32 %25, 1
  call void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* noundef %18, i8* noundef %1, i8* noundef %22, i64 noundef %24, i32 noundef %.lobit5, i32 noundef 0) #2
  %26 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 5
  %27 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %26, align 8
  %28 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 2
  %29 = load %struct.TreeCCInput*, %struct.TreeCCInput** %28, align 8
  %30 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %29, i64 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %29, i64 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = lshr i32 %2, 2
  %.lobit6 = and i32 %34, 1
  call void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* noundef %27, i8* noundef %1, i8* noundef %31, i64 noundef %33, i32 noundef %.lobit6, i32 noundef 1) #2
  br label %58

35:                                               ; preds = %14, %12
  %36 = and i32 %2, 1
  %.not2 = icmp eq i32 %36, 0
  br i1 %.not2, label %47, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 5
  %39 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %38, align 8
  %40 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 2
  %41 = load %struct.TreeCCInput*, %struct.TreeCCInput** %40, align 8
  %42 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %41, i64 0, i32 4
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %41, i64 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = lshr i32 %2, 2
  %.lobit3 = and i32 %46, 1
  call void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* noundef %39, i8* noundef %1, i8* noundef %43, i64 noundef %45, i32 noundef %.lobit3, i32 noundef 0) #2
  br label %57

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 4
  %49 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %48, align 8
  %50 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %0, i64 0, i32 2
  %51 = load %struct.TreeCCInput*, %struct.TreeCCInput** %50, align 8
  %52 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %51, i64 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %51, i64 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = lshr i32 %2, 2
  %.lobit = and i32 %56, 1
  call void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* noundef %49, i8* noundef %1, i8* noundef %53, i64 noundef %55, i32 noundef %.lobit, i32 noundef 0) #2
  br label %57

57:                                               ; preds = %47, %37
  br label %58

58:                                               ; preds = %57, %16
  ret void
}

declare dso_local void @TreeCCDebug(i64 noundef, i8* noundef, ...) #1

declare dso_local void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* noundef, i8* noundef, i8* noundef, i64 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
