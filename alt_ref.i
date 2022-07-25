/* -----------------------------------------------------------------------------
 * alt_ref.i
 * ----------------------------------------------------------------------------- */

%{
#include <Ref.h>
#include <stdexcept>
%}

namespace alt {
    template<class TStore> class RefBase : public TStore {
      public:
        typedef typename TStore::ValueType ValueType;
        typedef ValueType* value_ptr;
        
        RefBase();
        RefBase(value_ptr _ptr);
        RefBase(const RefBase& other);
        // Array(Array&& other);

        bool IsEmpty() const;
    };

    template<class T> class RefStore {
        public:
            typedef T value_type;
            typedef T* value_ptr;

            //RefStore();

            void Assign(value_ptr _ptr);
            void Free();
            // inline value_ptr Get() const;
        
            /*%extend {

            }*/
    };

    template<class T> using Ref = RefBase<RefStore<T>>;
	template<class T> using ConstRef = RefBase<RefStore<const T>>;
}