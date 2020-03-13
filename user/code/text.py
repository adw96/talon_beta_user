from talon import Context, Module


mod = Module()
@mod.capture(rule='{user.vocabulary}')
def word(m) -> str:
    return m.vocabulary[0]

@mod.capture(rule='(<phrase> | <user.word>)+')
def text(m) -> str:
    return str(m)

mod.list('vocabulary', desc='user vocabulary')

ctx = Context()
# option 1: just words
ctx.lists['user.vocabulary'] = [
    'varkelshorp',
    'blendatron',

    'Alon',
    'amplicon',
    'anova',

    'bias',
    'biostat',
    'Bryan',

    'CAGs',
    'clinicians',
    'column', 'columns',
    'column space',
    'conda',
    'conda install',
    'conda activate',
    'confirmatory',
    'contig',
    'contigs',
    'corncob',
    'covariate',

    'Daniela',
    'deconvolve',
    'department',
    'denoising',
    'devtools',
    'DivNet',

    'eigendecomposition',
    'estimand',

    'gene',
    'generalized',
    'genome',
    'genomes',
    'genus',
    'Gitana',
    'github',
    'grant',
    'grants',

    'heteroskedastic',
    'homeworks',
    'homoskedastic',

    'idempotent',
    'identifiability',
    'inverse',
    'inverses',

    'lambda',

    'MAG',
    'MAGs',
    'Mauricio',
    'Meren',
    'metadata',
    'metagenome',
    'metagenomic',
    'metagenomics',
    'metaphlan',
    'MGS',
    'microbiome',
    'misc',
    'missingness',
    'misspecified',
    'misspecify',
    'mock',
    'modeling',

    'omics',
    'orthonormal'
    'OTU',

    'pangenomic',
    'pangenomics',
    'pangenome',
    'penalization',
    'Perlman',
    'phyla',
    'phylum',
    'phyloseq',
    'phylodivnet',
    'Poisson',
    'Prevotella',
    'p-value',
    'p-values',

    'quantile', 'quantiles',

    'rarefying',
    'reparameterize', 'reparameterizing', 'reparameterization',
    'resample', 'resamples',

    'row',

    'semidefinite',
    'semiparametric',
    'stat',

    'talon',
    'taxa',

    'tibble',
    'tidyverse',
    'theorem', 'theorems',

    'underdispersion',
    'unifrac',
]

# option 2: a-b mapping
ctx.lists['user.vocabulary'] = {


    'i can decomposition': 'eigendecomposition',
    "i": "I",
    "i'm": "I'm",

    'lavender': 'lambda',
    'lander': 'lambda',


    'microbium': 'microbiome',

    "stat Dev lab": "Stat Div Lab", 

    'tax on': 'taxon'

}
