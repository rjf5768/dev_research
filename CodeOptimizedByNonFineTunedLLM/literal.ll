; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/treecc/literal.c'
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
define dso_local void @TreeCCAddLiteralDefn(%struct._tagTreeCCContext* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._tagTreeCCContext*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._tagTreeCCContext* %0, %struct._tagTreeCCContext** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %8 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %7, i32 0, i32 8
  %9 = load i16, i16* %8, align 8
  %10 = shl i16 %9, 15
  %11 = ashr i16 %10, 15
  %12 = sext i16 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %16 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %15, i32 0, i32 2
  %17 = load %struct.TreeCCInput*, %struct.TreeCCInput** %16, align 8
  %18 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i8*, i8** %5, align 8
  call void (i64, i8*, ...) @TreeCCDebug(i64 noundef %19, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %20, i8* noundef %21)
  br label %22

22:                                               ; preds = %14, %3
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %26
  %31 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %32 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %31, i32 0, i32 4
  %33 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %36 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %35, i32 0, i32 2
  %37 = load %struct.TreeCCInput*, %struct.TreeCCInput** %36, align 8
  %38 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %41 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %40, i32 0, i32 2
  %42 = load %struct.TreeCCInput*, %struct.TreeCCInput** %41, align 8
  %43 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  call void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* noundef %33, i8* noundef %34, i8* noundef %39, i64 noundef %44, i32 noundef %48, i32 noundef 0)
  %49 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %50 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %49, i32 0, i32 5
  %51 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %50, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %54 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %53, i32 0, i32 2
  %55 = load %struct.TreeCCInput*, %struct.TreeCCInput** %54, align 8
  %56 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %59 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %58, i32 0, i32 2
  %60 = load %struct.TreeCCInput*, %struct.TreeCCInput** %59, align 8
  %61 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  call void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* noundef %51, i8* noundef %52, i8* noundef %57, i64 noundef %62, i32 noundef %66, i32 noundef 1)
  br label %110

67:                                               ; preds = %26, %22
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %73 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %72, i32 0, i32 5
  %74 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %73, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %77 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %76, i32 0, i32 2
  %78 = load %struct.TreeCCInput*, %struct.TreeCCInput** %77, align 8
  %79 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %78, i32 0, i32 4
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %82 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %81, i32 0, i32 2
  %83 = load %struct.TreeCCInput*, %struct.TreeCCInput** %82, align 8
  %84 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  call void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* noundef %74, i8* noundef %75, i8* noundef %80, i64 noundef %85, i32 noundef %89, i32 noundef 0)
  br label %109

90:                                               ; preds = %67
  %91 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %92 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %91, i32 0, i32 4
  %93 = load %struct._tagTreeCCStream*, %struct._tagTreeCCStream** %92, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %96 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %95, i32 0, i32 2
  %97 = load %struct.TreeCCInput*, %struct.TreeCCInput** %96, align 8
  %98 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct._tagTreeCCContext*, %struct._tagTreeCCContext** %4, align 8
  %101 = getelementptr inbounds %struct._tagTreeCCContext, %struct._tagTreeCCContext* %100, i32 0, i32 2
  %102 = load %struct.TreeCCInput*, %struct.TreeCCInput** %101, align 8
  %103 = getelementptr inbounds %struct.TreeCCInput, %struct.TreeCCInput* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i32
  call void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* noundef %93, i8* noundef %94, i8* noundef %99, i64 noundef %104, i32 noundef %108, i32 noundef 0)
  br label %109

109:                                              ; preds = %90, %71
  br label %110

110:                                              ; preds = %109, %30
  ret void
}

declare dso_local void @TreeCCDebug(i64 noundef, i8* noundef, ...) #1

declare dso_local void @TreeCCStreamAddLiteral(%struct._tagTreeCCStream* noundef, i8* noundef, i8* noundef, i64 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
