package performance.vector
{
	import performance.Utils;

	import com.gskinner.performance.MethodTest;
	import com.gskinner.performance.TestSuite;

	import flash.geom.Vector3D;

	public class VectorNormalizeTest extends TestSuite
	{
		private var loops : uint = 1000000;

		private var n1 : Vector3D;

		public function VectorNormalizeTest()
		{
			name = "VectorNormalizeTest";
			description = "Comparing construction on Vectors " + loops + " loops.";
			tareTest = new MethodTest( tare );
			iterations = 4;
			tests = [ 
				new MethodTest( normalizeVectorNative, null, "normalizeVectorNative", 0, 1, "Vector3D.normalize()" ), 
			];
		}

		public function tare() : void
		{
			for (var i : uint = 0; i < loops; i++)
			{
				n1 = Utils.randomVector();
			}
		}

		public function normalizeVectorNative() : void
		{
			for (var i : uint = 0; i < loops; i++)
			{
				n1 = Utils.randomVector();
				n1.normalize();
			}
		}
	}
}
