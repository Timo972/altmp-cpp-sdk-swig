/* -----------------------------------------------------------------------------
 * alt_array.i
 * ----------------------------------------------------------------------------- */

%{
#include <types/Array.h>
#include <stdexcept>
%}

namespace alt {
    
    template<class T> class Array {
      public:
        typedef size_t alt_size;
        //typedef ptrdiff_t difference_type;
        typedef T value_type;
        //typedef value_type* pointer;
        //typedef const value_type* const_pointer;
        typedef value_type& reference;
        typedef const value_type& const_reference;
        
        Array();
        Array(const value_type* _data, alt_size _size);
        Array(const Array& other);
        // Array(Array&& other);

        alt_size GetSize() const;
        alt_size GetCapacity() const;
        void Reserve(alt_size n);
        void Push(const_reference el);
        %extend {
            const_reference get_const(int i) throw (std::out_of_range) {
                int size = int(self->size());
                if (i>=0 && i<size)
                    return (*self)[i];
                else
                    throw std::out_of_range("array index out of range");
            }
            reference get(int i) throw (std::out_of_range) {
                int size = int(self->size());
                if (i>=0 && i<size)
                    return (*self)[i];
                else
                    throw std::out_of_range("array index out of range");
            }
            void set_const(int i, const_reference val) throw (std::out_of_range) {
                int size = int(self->size());
                if (i>=0 && i<size)
                    (*self)[i] = val;
                else
                    throw std::out_of_range("array index out of range");
            }
            void set(int i, reference val) throw (std::out_of_range) {
                int size = int(self->size());
                if (i>=0 && i<size)
                    (*self)[i] = val;
                else
                    throw std::out_of_range("array index out of range");
            }
        }
    };

    // bool specialization
    /*template<> class vector<bool> {
      public:
        typedef size_t size_type;
        typedef ptrdiff_t difference_type;
        typedef bool value_type;
        typedef value_type* pointer;
        typedef const value_type* const_pointer;
        typedef value_type& reference;
        typedef bool const_reference;

        vector();
        vector(size_type n);
        vector(const vector& other);

        size_type size() const;
        size_type capacity() const;
        void reserve(size_type n);
        %rename(isEmpty) empty;
        bool empty() const;
        void clear();
        %rename(add) push_back;
        void push_back(const value_type& x);
        %extend {
            bool get(int i) throw (std::out_of_range) {
                int size = int(self->size());
                if (i>=0 && i<size)
                    return (*self)[i];
                else
                    throw std::out_of_range("vector index out of range");
            }
            void set(int i, const value_type& val) throw (std::out_of_range) {
                int size = int(self->size());
                if (i>=0 && i<size)
                    (*self)[i] = val;
                else
                    throw std::out_of_range("vector index out of range");
            }
        }
    };*/
}