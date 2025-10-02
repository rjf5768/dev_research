; ModuleID = './good.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/good.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.success = type { %struct.dent*, %struct.flagent*, %struct.flagent* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@hashheader = external dso_local global %struct.hashheader, align 4
@numhits = external dso_local global i32, align 4
@cflag = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@orig_word = internal global i8* null, align 8
@hits = external dso_local global [10 x %struct.success], align 16
@compoundflag = external dso_local global i32, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @good(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca [120 x i8], align 16
  %7 = getelementptr inbounds [120 x i8], [120 x i8]* %6, i64 0, i64 0
  br label %8

8:                                                ; preds = %10, %5
  %.02 = phi i8* [ %0, %5 ], [ %11, %10 ]
  %.01 = phi i8* [ %7, %5 ], [ %16, %10 ]
  %9 = load i8, i8* %.02, align 1
  %.not = icmp eq i8 %9, 0
  br i1 %.not, label %17, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %.02, i64 1
  %12 = load i8, i8* %.02, align 1
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 22, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %15, i8* %.01, align 1
  br label %8, !llvm.loop !4

17:                                               ; preds = %8
  store i8 0, i8* %.01, align 1
  %18 = ptrtoint i8* %.01 to i64
  %19 = ptrtoint [120 x i8]* %6 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 0, i32* @numhits, align 4
  %22 = load i32, i32* @cflag, align 4
  %.not3 = icmp eq i32 %22, 0
  br i1 %.not3, label %26, label %23

23:                                               ; preds = %17
  %24 = call i8* @ichartosstr(i8* noundef %0, i32 noundef 0) #4
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %24) #4
  store i8* %0, i8** @orig_word, align 8
  br label %54

26:                                               ; preds = %17
  %27 = getelementptr inbounds [120 x i8], [120 x i8]* %6, i64 0, i64 0
  %28 = call %struct.dent* @lookup(i8* noundef nonnull %27, i32 noundef 1) #4
  %.not4 = icmp eq %struct.dent* %28, null
  br i1 %.not4, label %53, label %29

29:                                               ; preds = %26
  store %struct.dent* %28, %struct.dent** getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 0, i32 0), align 16
  store %struct.flagent* null, %struct.flagent** getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 0, i32 1), align 8
  store %struct.flagent* null, %struct.flagent** getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 0, i32 2), align 16
  %.not8 = icmp eq i32 %2, 0
  br i1 %.not8, label %30, label %32

30:                                               ; preds = %29
  %31 = call i32 @cap_ok(i8* noundef %0, %struct.success* noundef getelementptr inbounds ([10 x %struct.success], [10 x %struct.success]* @hits, i64 0, i64 0), i32 noundef %21)
  %.not9 = icmp eq i32 %31, 0
  br i1 %.not9, label %33, label %32

32:                                               ; preds = %30, %29
  store i32 1, i32* @numhits, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32, i32* @compoundflag, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = or i32 %3, %4
  %38 = and i32 %37, 2
  %.not10 = icmp eq i32 %38, 0
  br i1 %.not10, label %52, label %39

39:                                               ; preds = %36
  %40 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 5), align 2
  %41 = icmp sgt i16 %40, -1
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.dent, %struct.dent* %28, i64 0, i32 2, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i16, i16* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 5), align 2
  %46 = sext i16 %45 to i64
  %47 = and i64 %46, 4294967295
  %48 = shl i64 1, %47
  %49 = and i64 %44, %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 0, i32* @numhits, align 4
  br label %52

52:                                               ; preds = %51, %42, %39, %36, %33
  br label %53

53:                                               ; preds = %52, %26
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i32, i32* @numhits, align 4
  %.not5 = icmp eq i32 %55, 0
  br i1 %.not5, label %58, label %56

56:                                               ; preds = %54
  %.not7 = icmp eq i32 %2, 0
  br i1 %.not7, label %57, label %58

57:                                               ; preds = %56
  br label %65

58:                                               ; preds = %56, %54
  %59 = getelementptr inbounds [120 x i8], [120 x i8]* %6, i64 0, i64 0
  call void @chk_aff(i8* noundef %0, i8* noundef nonnull %59, i32 noundef %21, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #4
  %60 = load i32, i32* @cflag, align 4
  %.not6 = icmp eq i32 %60, 0
  br i1 %.not6, label %63, label %61

61:                                               ; preds = %58
  %62 = call i32 @putchar(i32 noundef 10) #4
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32, i32* @numhits, align 4
  br label %65

65:                                               ; preds = %63, %57
  %.0 = phi i32 [ %64, %63 ], [ 1, %57 ]
  ret i32 %.0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i8* @ichartosstr(i8* noundef, i32 noundef) #1

declare dso_local %struct.dent* @lookup(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cap_ok(i8* noundef %0, %struct.success* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [120 x i8], align 16
  %5 = call i64 @whatcap(i8* noundef %0) #4
  %6 = icmp eq i64 %5, 268435456
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %159

8:                                                ; preds = %3
  %9 = icmp eq i64 %5, 805306368
  br i1 %9, label %10, label %35

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.success, %struct.success* %1, i64 0, i32 1
  %12 = load %struct.flagent*, %struct.flagent** %11, align 8
  %.not25 = icmp eq %struct.flagent* %12, null
  br i1 %.not25, label %22, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.success, %struct.success* %1, i64 0, i32 1
  %15 = load %struct.flagent*, %struct.flagent** %14, align 8
  %16 = getelementptr inbounds %struct.flagent, %struct.flagent* %15, i64 0, i32 4
  %17 = load i16, i16* %16, align 4
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.flagent, %struct.flagent* %15, i64 0, i32 3
  %20 = load i16, i16* %19, align 2
  %21 = sext i16 %20 to i32
  br label %23

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22, %13
  %.07 = phi i32 [ %18, %13 ], [ 0, %22 ]
  %.02 = phi i32 [ %21, %13 ], [ 0, %22 ]
  %24 = getelementptr inbounds %struct.success, %struct.success* %1, i64 0, i32 2
  %25 = load %struct.flagent*, %struct.flagent** %24, align 8
  %.not26 = icmp eq %struct.flagent* %25, null
  br i1 %.not26, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.success, %struct.success* %1, i64 0, i32 2
  %28 = load %struct.flagent*, %struct.flagent** %27, align 8
  %29 = getelementptr inbounds %struct.flagent, %struct.flagent* %28, i64 0, i32 4
  %30 = load i16, i16* %29, align 4
  %31 = sext i16 %30 to i64
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i64 [ %31, %26 ], [ 0, %32 ]
  br label %35

35:                                               ; preds = %33, %8
  %.18 = phi i32 [ %.07, %33 ], [ 0, %8 ]
  %.1 = phi i32 [ %.02, %33 ], [ 0, %8 ]
  %.01 = phi i64 [ %34, %33 ], [ 0, %8 ]
  br label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.success, %struct.success* %1, i64 0, i32 0
  br label %38

38:                                               ; preds = %156, %36
  %.06.in = phi %struct.dent** [ %37, %36 ], [ %157, %156 ]
  %.06 = load %struct.dent*, %struct.dent** %.06.in, align 8
  %39 = getelementptr inbounds %struct.dent, %struct.dent* %.06, i64 0, i32 2, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = and i64 %40, 805306368
  %.not = icmp eq i64 %41, %5
  br i1 %.not, label %50, label %42

42:                                               ; preds = %38
  %43 = icmp eq i64 %41, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = icmp eq i64 %5, 536870912
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = call i32 @entryhasaffixes(%struct.dent* noundef %.06, %struct.success* noundef %1)
  %.not24 = icmp eq i32 %47, 0
  br i1 %.not24, label %49, label %48

48:                                               ; preds = %46
  br label %159

49:                                               ; preds = %46, %44, %42
  br label %150

50:                                               ; preds = %38
  %.not12 = icmp eq i64 %5, 805306368
  br i1 %.not12, label %55, label %51

51:                                               ; preds = %50
  %52 = call i32 @entryhasaffixes(%struct.dent* noundef %.06, %struct.success* noundef %1)
  %.not23 = icmp eq i32 %52, 0
  br i1 %.not23, label %54, label %53

53:                                               ; preds = %51
  br label %159

54:                                               ; preds = %51
  br label %149

55:                                               ; preds = %50
  %56 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 0
  %57 = getelementptr inbounds %struct.dent, %struct.dent* %.06, i64 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strtoichar(i8* noundef nonnull %56, i8* noundef %58, i32 noundef 100, i32 noundef 1) #4
  %60 = sext i32 %.18 to i64
  %61 = getelementptr inbounds i8, i8* %0, i64 %60
  %62 = sext i32 %.1 to i64
  %63 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %65
  %67 = load i8, i8* %66, align 1
  %.not13 = icmp eq i8 %67, 0
  br i1 %.not13, label %81, label %68

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %78, %68
  %.04 = phi i8* [ %0, %68 ], [ %79, %78 ]
  %70 = icmp ult i8* %.04, %61
  br i1 %70, label %71, label %80

71:                                               ; preds = %69
  %72 = load i8, i8* %.04, align 1
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 25, i64 %73
  %75 = load i8, i8* %74, align 1
  %.not22 = icmp eq i8 %75, 0
  br i1 %.not22, label %77, label %76

76:                                               ; preds = %71
  br label %148

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds i8, i8* %.04, i64 1
  br label %69, !llvm.loop !6

80:                                               ; preds = %69
  br label %94

81:                                               ; preds = %55
  br label %82

82:                                               ; preds = %91, %81
  %.15 = phi i8* [ %0, %81 ], [ %92, %91 ]
  %83 = icmp ult i8* %.15, %61
  br i1 %83, label %84, label %93

84:                                               ; preds = %82
  %85 = load i8, i8* %.15, align 1
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %86
  %88 = load i8, i8* %87, align 1
  %.not21 = icmp eq i8 %88, 0
  br i1 %.not21, label %90, label %89

89:                                               ; preds = %84
  br label %148

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds i8, i8* %.15, i64 1
  br label %82, !llvm.loop !7

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %80
  %.2 = phi i8* [ %.04, %80 ], [ %.15, %93 ]
  %95 = sext i32 %.1 to i64
  %96 = getelementptr inbounds [120 x i8], [120 x i8]* %4, i64 0, i64 %95
  %97 = sext i32 %2 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %narrow = sub nsw i32 0, %.18
  %99 = sext i32 %narrow to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = sub nsw i64 0, %.01
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  br label %103

103:                                              ; preds = %109, %94
  %.3 = phi i8* [ %.2, %94 ], [ %110, %109 ]
  %.03 = phi i8* [ %96, %94 ], [ %111, %109 ]
  %104 = icmp ult i8* %.03, %102
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = load i8, i8* %.03, align 1
  %107 = load i8, i8* %.3, align 1
  %.not20 = icmp eq i8 %106, %107
  br i1 %.not20, label %109, label %108

108:                                              ; preds = %105
  br label %148

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, i8* %.3, i64 1
  %111 = getelementptr inbounds i8, i8* %.03, i64 1
  br label %103, !llvm.loop !8

112:                                              ; preds = %103
  %113 = getelementptr inbounds i8, i8* %102, i64 -1
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %115
  %117 = load i8, i8* %116, align 1
  %.not14 = icmp eq i8 %117, 0
  br i1 %.not14, label %131, label %118

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %128, %118
  %.4 = phi i8* [ %.3, %118 ], [ %129, %128 ]
  %120 = load i8, i8* %.4, align 1
  %.not18 = icmp eq i8 %120, 0
  br i1 %.not18, label %130, label %121

121:                                              ; preds = %119
  %122 = load i8, i8* %.4, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 25, i64 %123
  %125 = load i8, i8* %124, align 1
  %.not19 = icmp eq i8 %125, 0
  br i1 %.not19, label %127, label %126

126:                                              ; preds = %121
  br label %148

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127
  %129 = getelementptr inbounds i8, i8* %.4, i64 1
  br label %119, !llvm.loop !9

130:                                              ; preds = %119
  br label %144

131:                                              ; preds = %112
  br label %132

132:                                              ; preds = %141, %131
  %.5 = phi i8* [ %.3, %131 ], [ %142, %141 ]
  %133 = load i8, i8* %.5, align 1
  %.not15 = icmp eq i8 %133, 0
  br i1 %.not15, label %143, label %134

134:                                              ; preds = %132
  %135 = load i8, i8* %.5, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %136
  %138 = load i8, i8* %137, align 1
  %.not17 = icmp eq i8 %138, 0
  br i1 %.not17, label %140, label %139

139:                                              ; preds = %134
  br label %148

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140
  %142 = getelementptr inbounds i8, i8* %.5, i64 1
  br label %132, !llvm.loop !10

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %130
  %145 = call i32 @entryhasaffixes(%struct.dent* noundef %.06, %struct.success* noundef %1)
  %.not16 = icmp eq i32 %145, 0
  br i1 %.not16, label %147, label %146

146:                                              ; preds = %144
  br label %159

147:                                              ; preds = %144
  br label %148

148:                                              ; preds = %147, %139, %126, %108, %89, %76
  br label %149

149:                                              ; preds = %148, %54
  br label %150

150:                                              ; preds = %149, %49
  %151 = getelementptr inbounds %struct.dent, %struct.dent* %.06, i64 0, i32 2, i64 0
  %152 = load i64, i64* %151, align 8
  %153 = and i64 %152, 1073741824
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %158

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.dent, %struct.dent* %.06, i64 0, i32 0
  br label %38

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %158, %146, %53, %48, %7
  %.0 = phi i32 [ 1, %7 ], [ 1, %48 ], [ 0, %158 ], [ 1, %53 ], [ 1, %146 ]
  ret i32 %.0
}

declare dso_local void @chk_aff(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @putchar(i32 noundef) #1

declare dso_local i64 @whatcap(i8* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @entryhasaffixes(%struct.dent* nocapture noundef readonly %0, %struct.success* nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.success, %struct.success* %1, i64 0, i32 1
  %4 = load %struct.flagent*, %struct.flagent** %3, align 8
  %.not = icmp eq %struct.flagent* %4, null
  br i1 %.not, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.success, %struct.success* %1, i64 0, i32 1
  %9 = load %struct.flagent*, %struct.flagent** %8, align 8
  %10 = getelementptr inbounds %struct.flagent, %struct.flagent* %9, i64 0, i32 2
  %11 = load i16, i16* %10, align 8
  %12 = sext i16 %11 to i64
  %13 = and i64 %12, 4294967295
  %14 = shl i64 1, %13
  %15 = and i64 %7, %14
  %.not3 = icmp eq i64 %15, 0
  br i1 %.not3, label %16, label %17

16:                                               ; preds = %5
  br label %33

17:                                               ; preds = %5, %2
  %18 = getelementptr inbounds %struct.success, %struct.success* %1, i64 0, i32 2
  %19 = load %struct.flagent*, %struct.flagent** %18, align 8
  %.not1 = icmp eq %struct.flagent* %19, null
  br i1 %.not1, label %32, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.dent, %struct.dent* %0, i64 0, i32 2, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.success, %struct.success* %1, i64 0, i32 2
  %24 = load %struct.flagent*, %struct.flagent** %23, align 8
  %25 = getelementptr inbounds %struct.flagent, %struct.flagent* %24, i64 0, i32 2
  %26 = load i16, i16* %25, align 8
  %27 = sext i16 %26 to i64
  %28 = and i64 %27, 4294967295
  %29 = shl i64 1, %28
  %30 = and i64 %22, %29
  %.not2 = icmp eq i64 %30, 0
  br i1 %.not2, label %31, label %32

31:                                               ; preds = %20
  br label %33

32:                                               ; preds = %20, %17
  br label %33

33:                                               ; preds = %32, %31, %16
  %.0 = phi i32 [ 1, %32 ], [ 0, %31 ], [ 0, %16 ]
  ret i32 %.0
}

declare dso_local i32 @strtoichar(i8* noundef, i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @flagpr(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load i8*, i8** @orig_word, align 8
  %8 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %7) #5
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %6
  %12 = load i8*, i8** @orig_word, align 8
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %16
  %18 = load i8, i8* %17, align 1
  %.not17 = icmp eq i8 %18, 0
  br i1 %.not17, label %36, label %19

19:                                               ; preds = %11
  %20 = load i8*, i8** @orig_word, align 8
  br label %21

21:                                               ; preds = %33, %19
  %.01 = phi i8* [ %20, %19 ], [ %34, %33 ]
  %22 = load i8*, i8** @orig_word, align 8
  %23 = sext i32 %3 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = icmp ult i8* %.01, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i8, i8* %.01, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 25, i64 %28
  %30 = load i8, i8* %29, align 1
  %.not19 = icmp eq i8 %30, 0
  br i1 %.not19, label %32, label %31

31:                                               ; preds = %26
  br label %191

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds i8, i8* %.01, i64 1
  br label %21, !llvm.loop !11

35:                                               ; preds = %21
  br label %53

36:                                               ; preds = %11
  %37 = load i8*, i8** @orig_word, align 8
  br label %38

38:                                               ; preds = %50, %36
  %.12 = phi i8* [ %37, %36 ], [ %51, %50 ]
  %39 = load i8*, i8** @orig_word, align 8
  %40 = sext i32 %3 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = icmp ult i8* %.12, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i8, i8* %.12, align 1
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %45
  %47 = load i8, i8* %46, align 1
  %.not18 = icmp eq i8 %47, 0
  br i1 %.not18, label %49, label %48

48:                                               ; preds = %43
  br label %191

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds i8, i8* %.12, i64 1
  br label %38, !llvm.loop !12

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %35
  br label %54

54:                                               ; preds = %53, %6
  %55 = icmp sgt i32 %4, 0
  br i1 %55, label %56, label %101

56:                                               ; preds = %54
  %57 = load i8*, i8** @orig_word, align 8
  %sext = shl i64 %8, 32
  %58 = ashr exact i64 %sext, 32
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = sext i32 %5 to i64
  %61 = sub nsw i64 0, %60
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = getelementptr inbounds i8, i8* %62, i64 -1
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %65
  %67 = load i8, i8* %66, align 1
  %.not11 = icmp eq i8 %67, 0
  br i1 %.not11, label %81, label %68

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %78, %68
  %.23 = phi i8* [ %62, %68 ], [ %79, %78 ]
  %70 = load i8, i8* %.23, align 1
  %.not15 = icmp eq i8 %70, 0
  br i1 %.not15, label %80, label %71

71:                                               ; preds = %69
  %72 = load i8, i8* %.23, align 1
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 25, i64 %73
  %75 = load i8, i8* %74, align 1
  %.not16 = icmp eq i8 %75, 0
  br i1 %.not16, label %77, label %76

76:                                               ; preds = %71
  br label %191

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds i8, i8* %.23, i64 1
  br label %69, !llvm.loop !13

80:                                               ; preds = %69
  br label %100

81:                                               ; preds = %56
  %82 = load i8*, i8** @orig_word, align 8
  %sext12 = shl i64 %8, 32
  %83 = ashr exact i64 %sext12, 32
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = sext i32 %5 to i64
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  br label %88

88:                                               ; preds = %97, %81
  %.34 = phi i8* [ %87, %81 ], [ %98, %97 ]
  %89 = load i8, i8* %.34, align 1
  %.not13 = icmp eq i8 %89, 0
  br i1 %.not13, label %99, label %90

90:                                               ; preds = %88
  %91 = load i8, i8* %.34, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %92
  %94 = load i8, i8* %93, align 1
  %.not14 = icmp eq i8 %94, 0
  br i1 %.not14, label %96, label %95

95:                                               ; preds = %90
  br label %191

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds i8, i8* %.34, i64 1
  br label %88, !llvm.loop !14

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %80
  br label %101

101:                                              ; preds = %100, %54
  %102 = call i32 @putchar(i32 noundef 32) #4
  %103 = load i8*, i8** @orig_word, align 8
  %104 = sext i32 %3 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %107
  %109 = load i8, i8* %108, align 1
  %.not = icmp eq i8 %109, 0
  br i1 %.not, label %122, label %110

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %113, %110
  %.06 = phi i32 [ %2, %110 ], [ %114, %113 ]
  %.0 = phi i8* [ %0, %110 ], [ %115, %113 ]
  %112 = icmp sgt i32 %.06, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %111
  %114 = add nsw i32 %.06, -1
  %115 = getelementptr inbounds i8, i8* %.0, i64 1
  %116 = load i8, i8* %.0, align 1
  %117 = zext i8 %116 to i32
  %118 = call i8* @printichar(i32 noundef %117) #4
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %120 = call i32 @fputs(i8* noundef %118, %struct._IO_FILE* noundef %119) #4
  br label %111, !llvm.loop !15

121:                                              ; preds = %111
  br label %137

122:                                              ; preds = %101
  br label %123

123:                                              ; preds = %125, %122
  %.17 = phi i32 [ %2, %122 ], [ %126, %125 ]
  %.1 = phi i8* [ %0, %122 ], [ %127, %125 ]
  %124 = icmp sgt i32 %.17, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %123
  %126 = add nsw i32 %.17, -1
  %127 = getelementptr inbounds i8, i8* %.1, i64 1
  %128 = load i8, i8* %.1, align 1
  %129 = zext i8 %128 to i64
  %130 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 21, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = call i8* @printichar(i32 noundef %132) #4
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %135 = call i32 @fputs(i8* noundef %133, %struct._IO_FILE* noundef %134) #4
  br label %123, !llvm.loop !16

136:                                              ; preds = %123
  br label %137

137:                                              ; preds = %136, %121
  %.2 = phi i8* [ %.0, %121 ], [ %.1, %136 ]
  %138 = add i32 %3, %5
  %139 = sub i32 %9, %138
  br label %140

140:                                              ; preds = %149, %137
  %.28 = phi i32 [ %139, %137 ], [ %141, %149 ]
  %.45 = phi i8* [ %105, %137 ], [ %150, %149 ]
  %.3 = phi i8* [ %.2, %137 ], [ %151, %149 ]
  %141 = add nsw i32 %.28, -1
  %142 = icmp sgt i32 %.28, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load i8, i8* %.45, align 1
  %145 = zext i8 %144 to i32
  %146 = call i8* @printichar(i32 noundef %145) #4
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %148 = call i32 @fputs(i8* noundef %146, %struct._IO_FILE* noundef %147) #4
  br label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds i8, i8* %.45, i64 1
  %151 = getelementptr inbounds i8, i8* %.3, i64 1
  br label %140, !llvm.loop !17

152:                                              ; preds = %140
  %153 = load i8*, i8** @orig_word, align 8
  %154 = icmp ugt i8* %.45, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = getelementptr inbounds i8, i8* %.45, i64 -1
  br label %157

157:                                              ; preds = %155, %152
  %.5 = phi i8* [ %156, %155 ], [ %.45, %152 ]
  %158 = load i8, i8* %.5, align 1
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 24, i64 %159
  %161 = load i8, i8* %160, align 1
  %.not9 = icmp eq i8 %161, 0
  br i1 %.not9, label %166, label %162

162:                                              ; preds = %157
  %163 = call i8* @ichartosstr(i8* noundef %.3, i32 noundef 0) #4
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %165 = call i32 @fputs(i8* noundef %163, %struct._IO_FILE* noundef %164) #4
  br label %180

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %169, %166
  %.4 = phi i8* [ %.3, %166 ], [ %170, %169 ]
  %168 = load i8, i8* %.4, align 1
  %.not10 = icmp eq i8 %168, 0
  br i1 %.not10, label %179, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds i8, i8* %.4, i64 1
  %171 = load i8, i8* %.4, align 1
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds %struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 21, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = call i8* @printichar(i32 noundef %175) #4
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %178 = call i32 @fputs(i8* noundef %176, %struct._IO_FILE* noundef %177) #4
  br label %167, !llvm.loop !18

179:                                              ; preds = %167
  br label %180

180:                                              ; preds = %179, %162
  %181 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i64 0, i32 19), align 4
  %182 = sext i8 %181 to i32
  %183 = call i32 @putchar(i32 noundef %182) #4
  %184 = icmp sgt i32 %1, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = call i32 @putchar(i32 noundef %1) #4
  br label %187

187:                                              ; preds = %185, %180
  %188 = icmp sgt i32 %4, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %187
  %190 = call i32 @putchar(i32 noundef %4) #4
  br label %191

191:                                              ; preds = %189, %187, %95, %76, %48, %31
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i8* @printichar(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
