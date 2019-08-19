with Ada.Real_Time; use Ada.Real_Time;
with System_Time;
with System.Task_Primitives.Operations;
with System.BB.Time;
with System.BB.Threads;
with System.BB.Threads.Queues;
with Print_Task;

package body Cyclic_Tasks is

   task body Cyclic is
      Task_Static_Offset : constant Time_Span :=
               Ada.Real_Time.Microseconds (Offset);

      Next_Period : Ada.Real_Time.Time := System_Time.System_Start_Time
            + System_Time.Task_Activation_Delay + Task_Static_Offset;

      Period : constant Ada.Real_Time.Time_Span :=
               Ada.Real_Time.Microseconds (Cycle_Time);

      procedure Gauss (Times : Integer);
      procedure Gauss (Times : Integer) is
         Num : Integer := 0;
      begin
         for I in 1 .. Times loop
            Num := Num + I;
         end loop;
      end Gauss;
      function Time_Conversion (Time_in  : Ada.Real_Time.Time)
                                return System.BB.Time.Time_Span;
      function Time_Conversion (Time_in  : Ada.Real_Time.Time)
                                return System.BB.Time.Time_Span is
         Time_in_to_Time_Span : Ada.Real_Time.Time_Span;
         Time_out : System.BB.Time.Time_Span;
      begin
         Time_in_to_Time_Span := Time_in - Ada.Real_Time.Time_First;
         Time_out := System.BB.Time.To_Time_Span
           (Ada.Real_Time.To_Duration (Time_in_to_Time_Span));
         return Time_out;
      end Time_Conversion;

      Temp : Integer;
      Work_Jitter : Ada.Real_Time.Time;
      Release_Jitter : Ada.Real_Time.Time;

   begin
      System.Task_Primitives.Operations.Set_Period
         (System.Task_Primitives.Operations.Self,
         System.BB.Time.Microseconds (Cycle_Time));
      System.Task_Primitives.Operations.Set_Starting_Time
        (System.Task_Primitives.Operations.Self,
          Time_Conversion (Next_Period));
      System.Task_Primitives.Operations.Set_Relative_Deadline
         (System.Task_Primitives.Operations.Self,
          System.BB.Time.Microseconds (Dead));
      System.BB.Threads.Set_Fake_Number_ID (T_Num);
      System.BB.Threads.Queues.Initialize_Task_Table (T_Num);

      loop
         delay until Next_Period;

         Release_Jitter := Ada.Real_Time.Time_First +
           (Ada.Real_Time.Clock - Next_Period);

         Temp := Gauss_Num;
         Gauss (Temp);

         Work_Jitter := Ada.Real_Time.Time_First +
           (Ada.Real_Time.Clock - (Release_Jitter
            + (Next_Period - Ada.Real_Time.Time_First)));

         Next_Period := Next_Period + Period;
         System.Task_Primitives.Operations.Set_Jitters
           (System.Task_Primitives.Operations.Self,
           Time_Conversion (Work_Jitter), Time_Conversion (Release_Jitter));
      end loop;
   end Cyclic;

   procedure Init is
   begin
      System.Task_Primitives.Operations.Set_Relative_Deadline
        (System.Task_Primitives.Operations.Self,
          System.BB.Time.Milliseconds (Integer'Last));
      loop
         null;
      end loop;
   end Init;

   P1 : Print_Task.Print (240, -1, 1000, 0); -- period in milliseconds
   C1 : Cyclic (20, 14000, 14000, 1, 10454, 0);
   C2 : Cyclic (19, 15000, 15000, 2, 2598, 0);
   C3 : Cyclic (18, 20000, 20000, 3, 1592, 0);
   C4 : Cyclic (17, 26000, 26000, 4, 10835, 0);
   C5 : Cyclic (16, 29000, 29000, 5, 11153, 0);
   C6 : Cyclic (15, 34000, 34000, 6, 798, 0);
   C7 : Cyclic (14, 50000, 50000, 7, 8654, 0);
   C8 : Cyclic (13, 54000, 54000, 8, 66318, 0);
   C9 : Cyclic (12, 56000, 56000, 9, 17633, 0);
   C10 : Cyclic (11, 72000, 72000, 10, 34447, 0);
   C11 : Cyclic (10, 75000, 75000, 11, 108565, 0);
   C12 : Cyclic (9, 77000, 77000, 12, 121779, 0);
   C13 : Cyclic (8, 84000, 84000, 13, 61818, 0);
   C14 : Cyclic (7, 85000, 85000, 14, 34267, 0);
   C15 : Cyclic (6, 88000, 88000, 15, 4652, 0);
   C16 : Cyclic (5, 89000, 89000, 16, 10592, 0);
   C17 : Cyclic (4, 91000, 91000, 17, 10740, 0);
   C18 : Cyclic (3, 92000, 92000, 18, 57413, 0);
   C19 : Cyclic (2, 96000, 96000, 19, 10782, 0);
   C20 : Cyclic (1, 99000, 99000, 20, 10189, 0);
end Cyclic_Tasks;
