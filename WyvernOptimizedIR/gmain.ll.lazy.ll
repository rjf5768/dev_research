; ModuleID = './gmain.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/gmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.rect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dlink2 = type { i32, %struct.dlink2*, %struct.dlink2* }
%struct.nodbox = type { %struct.flare*, %struct.flare*, i32 }
%struct.flare = type { i32, i32*, %struct.flare* }

@.str = private unnamed_addr constant [9 x i8] c"%s.debug\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpdebug = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.geo\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Error: file: %s not present\0A\00", align 1
@Vptrs = external dso_local global %struct.dlink1**, align 8
@Hptrs = external dso_local global %struct.dlink1**, align 8
@Vroot = external dso_local global %struct.tnode*, align 8
@Hroot = external dso_local global %struct.tnode*, align 8
@rectArray = external dso_local global %struct.rect*, align 8
@HRlist = external dso_local global %struct.dlink2*, align 8
@VRlist = external dso_local global %struct.dlink2*, align 8
@LEptrs = external dso_local global %struct.dlink2**, align 8
@BEptrs = external dso_local global %struct.dlink2**, align 8
@LEroot = external dso_local global %struct.tnode*, align 8
@BEroot = external dso_local global %struct.tnode*, align 8
@Hlist = external dso_local global %struct.dlink1*, align 8
@Vlist = external dso_local global %struct.dlink1*, align 8
@VDptrs = external dso_local global %struct.dlink1**, align 8
@HRptrs = external dso_local global %struct.dlink1**, align 8
@VDroot = external dso_local global %struct.tnode*, align 8
@HRroot = external dso_local global %struct.tnode*, align 8
@hFixedList = external dso_local global %struct.dlink1*, align 8
@vFixedList = external dso_local global %struct.dlink1*, align 8
@numberCells = external dso_local global i32, align 4
@xNodules = external dso_local global %struct.nodbox*, align 8
@yNodules = external dso_local global %struct.nodbox*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @gmain() #0 {
  %1 = alloca %struct.tnode*, align 8
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %6 = load i8*, i8** @cktName, align 8
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef %6) #4
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %9 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  store %struct._IO_FILE* %9, %struct._IO_FILE** @fpdebug, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %12) #4
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %0
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %16 = load i8*, i8** @cktName, align 8
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %15, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %16) #4
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %19 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #4
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %23) #4
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %14
  call void @readgeo(%struct._IO_FILE* noundef nonnull %19) #4
  call void @makelink() #4
  call void @hprobes() #4
  call void @vprobes() #4
  %26 = load i8*, i8** bitcast (%struct.dlink1*** @Vptrs to i8**), align 8
  call void @free(i8* noundef %26) #4
  %27 = load i8*, i8** bitcast (%struct.dlink1*** @Hptrs to i8**), align 8
  call void @free(i8* noundef %27) #4
  %28 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %.not = icmp eq %struct.tnode* %28, null
  br i1 %.not, label %36, label %29

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %34, %29
  call void @tpop(%struct.tnode** noundef nonnull @Vroot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %3, i32* noundef nonnull %4) #4
  %31 = load %struct.tnode*, %struct.tnode** %1, align 8
  %32 = icmp eq %struct.tnode* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %35

34:                                               ; preds = %30
  br label %30

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.tnode*, %struct.tnode** @Hroot, align 8
  %.not8 = icmp eq %struct.tnode* %37, null
  br i1 %.not8, label %45, label %38

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %43, %38
  call void @tpop(%struct.tnode** noundef nonnull @Hroot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %3, i32* noundef nonnull %4) #4
  %40 = load %struct.tnode*, %struct.tnode** %1, align 8
  %41 = icmp eq %struct.tnode* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %44

43:                                               ; preds = %39
  br label %39

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %36
  call void @fulllink() #4
  call void @findnodes() #4
  call void @changraph() #4
  call void @xgraph() #4
  call void @ygraph() #4
  call void @reduceg() #4
  call void @printgph() #4
  call void @gentwf() #4
  %46 = load i8*, i8** bitcast (%struct.rect** @rectArray to i8**), align 8
  call void @free(i8* noundef %46) #4
  %47 = load %struct.dlink2*, %struct.dlink2** @HRlist, align 8
  br label %48

48:                                               ; preds = %49, %45
  %.02 = phi %struct.dlink2* [ %47, %45 ], [ %51, %49 ]
  %.not9 = icmp eq %struct.dlink2* %.02, null
  br i1 %.not9, label %53, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %.02, i64 0, i32 2
  %51 = load %struct.dlink2*, %struct.dlink2** %50, align 8
  %52 = bitcast %struct.dlink2* %.02 to i8*
  call void @free(i8* noundef %52) #4
  br label %48, !llvm.loop !4

53:                                               ; preds = %48
  %54 = load %struct.dlink2*, %struct.dlink2** @VRlist, align 8
  br label %55

55:                                               ; preds = %56, %53
  %.13 = phi %struct.dlink2* [ %54, %53 ], [ %58, %56 ]
  %.not10 = icmp eq %struct.dlink2* %.13, null
  br i1 %.not10, label %60, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.dlink2, %struct.dlink2* %.13, i64 0, i32 2
  %58 = load %struct.dlink2*, %struct.dlink2** %57, align 8
  %59 = bitcast %struct.dlink2* %.13 to i8*
  call void @free(i8* noundef %59) #4
  br label %55, !llvm.loop !6

60:                                               ; preds = %55
  %61 = load i8*, i8** bitcast (%struct.dlink2*** @LEptrs to i8**), align 8
  call void @free(i8* noundef %61) #4
  %62 = load i8*, i8** bitcast (%struct.dlink2*** @BEptrs to i8**), align 8
  call void @free(i8* noundef %62) #4
  %63 = load %struct.tnode*, %struct.tnode** @LEroot, align 8
  %.not11 = icmp eq %struct.tnode* %63, null
  br i1 %.not11, label %71, label %64

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %69, %64
  call void @tpop(%struct.tnode** noundef nonnull @LEroot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %3, i32* noundef nonnull %4) #4
  %66 = load %struct.tnode*, %struct.tnode** %1, align 8
  %67 = icmp eq %struct.tnode* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %70

69:                                               ; preds = %65
  br label %65

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70, %60
  %72 = load %struct.tnode*, %struct.tnode** @BEroot, align 8
  %.not12 = icmp eq %struct.tnode* %72, null
  br i1 %.not12, label %80, label %73

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %78, %73
  call void @tpop(%struct.tnode** noundef nonnull @BEroot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %3, i32* noundef nonnull %4) #4
  %75 = load %struct.tnode*, %struct.tnode** %1, align 8
  %76 = icmp eq %struct.tnode* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %79

78:                                               ; preds = %74
  br label %74

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79, %71
  %81 = load %struct.dlink1*, %struct.dlink1** @Hlist, align 8
  br label %82

82:                                               ; preds = %83, %80
  %.04 = phi %struct.dlink1* [ %81, %80 ], [ %85, %83 ]
  %.not13 = icmp eq %struct.dlink1* %.04, null
  br i1 %.not13, label %87, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.04, i64 0, i32 2
  %85 = load %struct.dlink1*, %struct.dlink1** %84, align 8
  %86 = bitcast %struct.dlink1* %.04 to i8*
  call void @free(i8* noundef %86) #4
  br label %82, !llvm.loop !7

87:                                               ; preds = %82
  %88 = load %struct.dlink1*, %struct.dlink1** @Vlist, align 8
  br label %89

89:                                               ; preds = %90, %87
  %.15 = phi %struct.dlink1* [ %88, %87 ], [ %92, %90 ]
  %.not14 = icmp eq %struct.dlink1* %.15, null
  br i1 %.not14, label %94, label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.15, i64 0, i32 2
  %92 = load %struct.dlink1*, %struct.dlink1** %91, align 8
  %93 = bitcast %struct.dlink1* %.15 to i8*
  call void @free(i8* noundef %93) #4
  br label %89, !llvm.loop !8

94:                                               ; preds = %89
  %95 = load i8*, i8** bitcast (%struct.dlink1*** @Vptrs to i8**), align 8
  call void @free(i8* noundef %95) #4
  %96 = load i8*, i8** bitcast (%struct.dlink1*** @Hptrs to i8**), align 8
  call void @free(i8* noundef %96) #4
  %97 = load %struct.tnode*, %struct.tnode** @Vroot, align 8
  %.not15 = icmp eq %struct.tnode* %97, null
  br i1 %.not15, label %105, label %98

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %103, %98
  call void @tpop(%struct.tnode** noundef nonnull @Vroot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %3, i32* noundef nonnull %4) #4
  %100 = load %struct.tnode*, %struct.tnode** %1, align 8
  %101 = icmp eq %struct.tnode* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %104

103:                                              ; preds = %99
  br label %99

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %104, %94
  %106 = load %struct.tnode*, %struct.tnode** @Hroot, align 8
  %.not16 = icmp eq %struct.tnode* %106, null
  br i1 %.not16, label %114, label %107

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %112, %107
  call void @tpop(%struct.tnode** noundef nonnull @Hroot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %3, i32* noundef nonnull %4) #4
  %109 = load %struct.tnode*, %struct.tnode** %1, align 8
  %110 = icmp eq %struct.tnode* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %113

112:                                              ; preds = %108
  br label %108

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113, %105
  %115 = load i8*, i8** bitcast (%struct.dlink1*** @VDptrs to i8**), align 8
  call void @free(i8* noundef %115) #4
  %116 = load i8*, i8** bitcast (%struct.dlink1*** @HRptrs to i8**), align 8
  call void @free(i8* noundef %116) #4
  %117 = load %struct.tnode*, %struct.tnode** @VDroot, align 8
  %.not17 = icmp eq %struct.tnode* %117, null
  br i1 %.not17, label %125, label %118

118:                                              ; preds = %114
  br label %119

119:                                              ; preds = %123, %118
  call void @tpop(%struct.tnode** noundef nonnull @VDroot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %3, i32* noundef nonnull %4) #4
  %120 = load %struct.tnode*, %struct.tnode** %1, align 8
  %121 = icmp eq %struct.tnode* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %124

123:                                              ; preds = %119
  br label %119

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %124, %114
  %126 = load %struct.tnode*, %struct.tnode** @HRroot, align 8
  %.not18 = icmp eq %struct.tnode* %126, null
  br i1 %.not18, label %134, label %127

127:                                              ; preds = %125
  br label %128

128:                                              ; preds = %132, %127
  call void @tpop(%struct.tnode** noundef nonnull @HRroot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %3, i32* noundef nonnull %4) #4
  %129 = load %struct.tnode*, %struct.tnode** %1, align 8
  %130 = icmp eq %struct.tnode* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %133

132:                                              ; preds = %128
  br label %128

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133, %125
  %135 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  br label %136

136:                                              ; preds = %137, %134
  %.26 = phi %struct.dlink1* [ %135, %134 ], [ %139, %137 ]
  %.not19 = icmp eq %struct.dlink1* %.26, null
  br i1 %.not19, label %141, label %137

137:                                              ; preds = %136
  %138 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.26, i64 0, i32 2
  %139 = load %struct.dlink1*, %struct.dlink1** %138, align 8
  %140 = bitcast %struct.dlink1* %.26 to i8*
  call void @free(i8* noundef %140) #4
  br label %136, !llvm.loop !9

141:                                              ; preds = %136
  %142 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  br label %143

143:                                              ; preds = %144, %141
  %.37 = phi %struct.dlink1* [ %142, %141 ], [ %146, %144 ]
  %.not20 = icmp eq %struct.dlink1* %.37, null
  br i1 %.not20, label %148, label %144

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.37, i64 0, i32 2
  %146 = load %struct.dlink1*, %struct.dlink1** %145, align 8
  %147 = bitcast %struct.dlink1* %.37 to i8*
  call void @free(i8* noundef %147) #4
  br label %143, !llvm.loop !10

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %205, %148
  %.0 = phi i32 [ 0, %148 ], [ %206, %205 ]
  %150 = load i32, i32* @numberCells, align 4
  %151 = add nsw i32 %150, 1
  %.not21 = icmp sgt i32 %.0, %151
  br i1 %.not21, label %207, label %152

152:                                              ; preds = %149
  %153 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %154 = zext i32 %.0 to i64
  %155 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %153, i64 %154, i32 1
  %156 = load %struct.flare*, %struct.flare** %155, align 8
  br label %157

157:                                              ; preds = %158, %152
  %.01 = phi %struct.flare* [ %156, %152 ], [ %163, %158 ]
  %.not22 = icmp eq %struct.flare* %.01, null
  br i1 %.not22, label %165, label %158

158:                                              ; preds = %157
  %159 = getelementptr inbounds %struct.flare, %struct.flare* %.01, i64 0, i32 1
  %160 = bitcast i32** %159 to i8**
  %161 = load i8*, i8** %160, align 8
  call void @free(i8* noundef %161) #4
  %162 = getelementptr inbounds %struct.flare, %struct.flare* %.01, i64 0, i32 2
  %163 = load %struct.flare*, %struct.flare** %162, align 8
  %164 = bitcast %struct.flare* %.01 to i8*
  call void @free(i8* noundef %164) #4
  br label %157, !llvm.loop !11

165:                                              ; preds = %157
  %166 = load %struct.nodbox*, %struct.nodbox** @xNodules, align 8
  %167 = zext i32 %.0 to i64
  %168 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %166, i64 %167, i32 0
  %169 = load %struct.flare*, %struct.flare** %168, align 8
  br label %170

170:                                              ; preds = %171, %165
  %.1 = phi %struct.flare* [ %169, %165 ], [ %176, %171 ]
  %.not23 = icmp eq %struct.flare* %.1, null
  br i1 %.not23, label %178, label %171

171:                                              ; preds = %170
  %172 = getelementptr inbounds %struct.flare, %struct.flare* %.1, i64 0, i32 1
  %173 = bitcast i32** %172 to i8**
  %174 = load i8*, i8** %173, align 8
  call void @free(i8* noundef %174) #4
  %175 = getelementptr inbounds %struct.flare, %struct.flare* %.1, i64 0, i32 2
  %176 = load %struct.flare*, %struct.flare** %175, align 8
  %177 = bitcast %struct.flare* %.1 to i8*
  call void @free(i8* noundef %177) #4
  br label %170, !llvm.loop !12

178:                                              ; preds = %170
  %179 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %180 = zext i32 %.0 to i64
  %181 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %179, i64 %180, i32 1
  %182 = load %struct.flare*, %struct.flare** %181, align 8
  br label %183

183:                                              ; preds = %184, %178
  %.2 = phi %struct.flare* [ %182, %178 ], [ %189, %184 ]
  %.not24 = icmp eq %struct.flare* %.2, null
  br i1 %.not24, label %191, label %184

184:                                              ; preds = %183
  %185 = getelementptr inbounds %struct.flare, %struct.flare* %.2, i64 0, i32 1
  %186 = bitcast i32** %185 to i8**
  %187 = load i8*, i8** %186, align 8
  call void @free(i8* noundef %187) #4
  %188 = getelementptr inbounds %struct.flare, %struct.flare* %.2, i64 0, i32 2
  %189 = load %struct.flare*, %struct.flare** %188, align 8
  %190 = bitcast %struct.flare* %.2 to i8*
  call void @free(i8* noundef %190) #4
  br label %183, !llvm.loop !13

191:                                              ; preds = %183
  %192 = load %struct.nodbox*, %struct.nodbox** @yNodules, align 8
  %193 = zext i32 %.0 to i64
  %194 = getelementptr inbounds %struct.nodbox, %struct.nodbox* %192, i64 %193, i32 0
  %195 = load %struct.flare*, %struct.flare** %194, align 8
  br label %196

196:                                              ; preds = %197, %191
  %.3 = phi %struct.flare* [ %195, %191 ], [ %202, %197 ]
  %.not25 = icmp eq %struct.flare* %.3, null
  br i1 %.not25, label %204, label %197

197:                                              ; preds = %196
  %198 = getelementptr inbounds %struct.flare, %struct.flare* %.3, i64 0, i32 1
  %199 = bitcast i32** %198 to i8**
  %200 = load i8*, i8** %199, align 8
  call void @free(i8* noundef %200) #4
  %201 = getelementptr inbounds %struct.flare, %struct.flare* %.3, i64 0, i32 2
  %202 = load %struct.flare*, %struct.flare** %201, align 8
  %203 = bitcast %struct.flare* %.3 to i8*
  call void @free(i8* noundef %203) #4
  br label %196, !llvm.loop !14

204:                                              ; preds = %196
  br label %205

205:                                              ; preds = %204
  %206 = add nuw nsw i32 %.0, 1
  br label %149, !llvm.loop !15

207:                                              ; preds = %149
  %208 = load i8*, i8** bitcast (%struct.nodbox** @xNodules to i8**), align 8
  call void @free(i8* noundef %208) #4
  %209 = load i8*, i8** bitcast (%struct.nodbox** @yNodules to i8**), align 8
  call void @free(i8* noundef %209) #4
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %211 = call i32 @fclose(%struct._IO_FILE* noundef %210) #4
  %212 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %19) #4
  ret void

UnifiedUnreachableBlock:                          ; preds = %21, %11
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local void @readgeo(%struct._IO_FILE* noundef) #2

declare dso_local void @makelink() #2

declare dso_local void @hprobes() #2

declare dso_local void @vprobes() #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

declare dso_local void @tpop(%struct.tnode** noundef, %struct.tnode** noundef, i32* noundef, i32* noundef) #2

declare dso_local void @fulllink() #2

declare dso_local void @findnodes() #2

declare dso_local void @changraph() #2

declare dso_local void @xgraph() #2

declare dso_local void @ygraph() #2

declare dso_local void @reduceg() #2

declare dso_local void @printgph() #2

declare dso_local void @gentwf() #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
