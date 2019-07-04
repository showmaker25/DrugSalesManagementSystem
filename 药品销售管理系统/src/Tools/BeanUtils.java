package Tools;
import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.util.Map;
public class BeanUtils {
	public static void packageData(Object obj, Map<String, Object> map) {
		try {
			BeanInfo info = Introspector.getBeanInfo(obj.getClass(),
					Object.class);
			PropertyDescriptor[] pro = info.getPropertyDescriptors();
			for (PropertyDescriptor p : pro) {
				String name = p.getName();
				if (map.get(name) != null) {
					p.getWriteMethod().invoke(obj, map.get(name));
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
