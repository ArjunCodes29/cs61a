test = {
  'name': 'interleave',
  'points': 1,
  'suites': [
    {
      'cases': [
        {
          'code': r"""
          scm> (interleave (list 1 3 5) (list 2 4))
          cab58e71b4a428c03dc77c152e3f0405
          # locked
          """,
          'hidden': False,
          'locked': True,
          'multiline': False
        },
        {
          'code': r"""
          scm> (interleave (list 2 4) (list 1 3 5))
          40c1fbac09162ac41f88ee58cc32c69d
          # locked
          """,
          'hidden': False,
          'locked': True,
          'multiline': False
        },
        {
          'code': r"""
          scm> (interleave (list 1 2) (list 1 2))
          7876ad5be73e3ba2746c980800b7e419
          # locked
          """,
          'hidden': False,
          'locked': True,
          'multiline': False
        },
        {
          'code': r"""
          scm> (interleave '(1 2 3 4 5 6) '(7 8))
          1207a6e738c9a05437def4e0c54310a1
          # locked
          """,
          'hidden': False,
          'locked': True,
          'multiline': False
        }
      ],
      'scored': True,
      'setup': r"""
      scm> (load-all ".")
      """,
      'teardown': '',
      'type': 'scheme'
    },
    {
      'cases': [
        {
          'code': r"""
          scm> (interleave (list 1 3 5) (list 2 4 6))
          446af2ff0a2d6c49db731055f8c0804d
          # locked
          """,
          'hidden': False,
          'locked': True,
          'multiline': False
        },
        {
          'code': r"""
          scm> (interleave (list 1 3 5) nil)
          2b642a9b7568a2206bdc1a3d944f1dc2
          # locked
          scm> (interleave nil (list 1 3 5))
          2b642a9b7568a2206bdc1a3d944f1dc2
          # locked
          scm> (interleave nil nil)
          5d4e7085bcd945f8a26f87865c684069
          # locked
          """,
          'hidden': False,
          'locked': True,
          'multiline': False
        }
      ],
      'scored': True,
      'setup': r"""
      scm> (load-all ".")
      """,
      'teardown': '',
      'type': 'scheme'
    }
  ]
}
