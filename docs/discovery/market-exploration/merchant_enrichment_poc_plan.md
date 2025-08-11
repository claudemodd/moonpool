# Merchant Data Enrichment Proof of Concept Plan

## Business Value Proposition

**Core Objective**: Prove that independent merchant enrichment can achieve commercial-grade accuracy (90%+) without vendor lock-in, while building valuable training datasets for cost-effective local model deployment.

**Key Benefits:**
- **Independence**: No reliance on expensive third-party enrichment APIs
- **Data ownership**: Build proprietary merchant dataset and training corpus
- **Cost control**: Transition from expensive LLM calls to efficient local models
- **Customization**: Train models specifically for NZ market patterns and edge cases
- **Scalability**: Economic model that improves with volume rather than degrading

## Accuracy Targets & Success Criteria

### Phase 1: Proof of Concept (Weeks 1-4)
**Target Accuracy Metrics:**
- **Merchant Identification**: 85-90% accuracy
- **Transaction Categorization**: 90-93% accuracy  
- **Combined Enrichment**: 80-85% overall accuracy
- **Processing Volume**: 1,000-5,000 transactions for validation

**Success Criteria:**
- Demonstrates merchant enrichment is viable for NZ market
- Identifies major transaction patterns and merchant types
- Builds initial training dataset of 500+ verified transactions
- Validates Claude.ai prompt engineering approach

### Phase 2: Training Data Collection (Weeks 5-8)
**Target Accuracy Metrics:**
- **Training dataset quality**: 10,000+ verified transaction labels
- **Model training readiness**: Balanced dataset across merchant types and categories
- **BERT model baseline**: 85-90% accuracy on holdout test set
- **Cost efficiency proof**: <$0.01 per transaction with local model

**Success Criteria:**
- **High-quality training corpus**: Sufficient for transformer model training
- **Vendor independence**: Demonstrated accuracy without third-party APIs
- **Economic viability**: Clear path to sub-penny per transaction costs
- **Market differentiation**: Proprietary dataset providing competitive advantage

## Technical Approach

### Core Strategy: Tiered Processing with Claude.ai
**Multi-Tier Processing Pipeline:**
1. **Tier 1 - Pattern Matching (Free)**: Exact matches and high-confidence patterns
2. **Tier 2 - Fuzzy Matching (Free)**: String similarity and rule-based classification
3. **Tier 3 - Claude.ai Processing (Paid)**: Complex cases requiring LLM reasoning
4. **Tier 4 - Manual Review**: Edge cases and low-confidence results

**Why This Approach:**
- Minimize Claude.ai token usage by filtering obvious cases
- Leverage Claude Max subscription only for complex merchant identification
- Rapid iteration on prompt engineering without ML infrastructure
- Built-in reasoning capabilities for ambiguous merchant patterns
- Cost-effective processing with targeted LLM usage

### Data Sources Priority
1. **Primary**: Bank statements (existing data) + Akahu free tier
2. **Enrichment**: NZBN Registry API (free) for canonical business data
3. **Validation**: Google Places API (limited budget) for ground truth
4. **Future**: Payments NZ API when volume justifies cost

### Confidence Scoring Framework
```
Pre-LLM Screening Process:

Tier 1 - Exact Pattern Match (Auto-approve, 0 tokens):
- Exact merchant name matches in known database
- Common abbreviation patterns (MCD → McDonald's)
- Confidence: 98-100%

Tier 2 - High-Confidence Rules (Auto-approve, 0 tokens):
- String similarity >90% to known merchants
- Clear pattern matches (ATM, EFTPOS, bank codes)
- Standard payment processors (PAYPAL, STRIPE)
- Confidence: 85-97%

Tier 3 - Medium-Confidence Fuzzy (Claude screening):
- String similarity 70-90% to known merchants
- Partial matches requiring context reasoning
- New merchants with recognizable patterns
- Confidence: 70-84%

Tier 4 - Low-Confidence Complex (Claude + validation):
- Ambiguous transaction descriptions
- Unknown merchants requiring research
- Cross-reference validation needed
- Confidence: <70%

Token Usage Optimization:
- Target: 80% of transactions processed in Tiers 1-2 (0 tokens)
- Claude.ai usage: Only 20% of transactions requiring LLM processing
- Estimated cost reduction: 80% vs. processing all transactions
```

## Implementation Plan

### Week 1: Foundation Setup
**Objectives:**
- Establish data collection and validation framework
- Create initial test dataset
- Design Claude.ai prompt architecture

**Deliverables:**
- 500 transaction test dataset with manual ground truth labels
- Initial Claude.ai prompts for merchant identification
- Basic confidence scoring methodology
- Integration with NZBN Registry API

**Tasks:**
1. **Dataset Creation**
   - Extract 500 diverse transactions from bank statements
   - Manual labeling by 2-3 people for ground truth
   - Include transaction types: POS, online, direct debit, transfers
   - Balance common merchants (40%), mid-tier (40%), long-tail (20%)

2. **Prompt Engineering**
   - Design specialized prompts for Tier 3 (medium confidence) cases only
   - Create context-aware prompts for ambiguous merchant descriptions
   - Implement reasoning chains for complex merchant identification
   - Build batch processing templates for cost efficiency

3. **Screening Infrastructure**
   - Build tiered processing pipeline with confidence gates
   - Create merchant pattern database from NZBN and known aliases
   - Implement string similarity algorithms (Jaro-Winkler, Levenshtein)
   - Set up token usage tracking and cost optimization

### Week 2: Initial Testing & Iteration
**Objectives:**
- Test Claude.ai performance against ground truth dataset
- Iterate on prompt engineering for accuracy improvements
- Establish baseline metrics

**Deliverables:**
- Baseline accuracy measurements across all metrics
- Refined prompts achieving target accuracy ranges
- Error analysis and pattern identification
- Confidence scoring calibration

**Tasks:**
1. **Screening Pipeline Development**
   - Build comprehensive merchant alias database from NZBN data
   - Implement exact match and fuzzy string matching algorithms
   - Create rule-based pattern recognition for common transaction types
   - Establish confidence thresholds for each processing tier

2. **Token Optimization Testing**
   - Measure actual vs. predicted screening effectiveness
   - A/B test different confidence thresholds for cost optimization
   - Validate that screened transactions maintain target accuracy
   - Optimize batch sizes and prompt efficiency for Tier 3 processing

3. **Claude.ai Integration**
   - Design targeted prompts for medium and low-confidence cases
   - Test reasoning approaches for ambiguous merchant identification
   - Implement cost tracking and budget monitoring
   - Build fallback strategies for API failures or rate limits

### Week 3: Scale Testing & Validation
**Objectives:**
- Test approach on larger transaction volumes
- Validate accuracy across different data sources
- Optimize for cost and latency

**Deliverables:**
- Accuracy results on 2,000+ transaction dataset
- Cost analysis and optimization strategies
- Integration with Akahu API for validation
- Refined confidence scoring model

**Tasks:**
1. **Volume Testing with Screening**
   - Test tiered processing on 2,000+ transaction dataset
   - Measure screening effectiveness: target 80% processed in Tiers 1-2
   - Validate accuracy consistency across all processing tiers
   - Optimize screening rules based on real transaction patterns

2. **Cost Analysis and Optimization**
   - Track actual token usage and costs vs. predictions
   - Compare screened vs. unscreened processing costs
   - Identify opportunities for further screening improvements
   - Validate ROI of screening infrastructure development

3. **Accuracy Validation Across Tiers**
   - Ensure Tier 1-2 screening doesn't compromise accuracy
   - Test edge cases where screening might miss complex merchants
   - Validate that Claude.ai focuses on genuinely challenging cases
   - Measure overall pipeline accuracy vs. cost efficiency

### Week 4: Training Data Collection & Model Transition
**Objectives:**
- Build substantial training dataset using optimized Claude.ai pipeline
- Demonstrate transition path from LLM to local model
- Validate economic model for independent enrichment

**Deliverables:**
- 10,000+ labeled transaction training dataset
- Initial BERT model trained on collected data
- Economic analysis: Claude.ai costs vs. local model deployment
- Proof of concept for vendor-independent enrichment approach

**Tasks:**
1. **Scaled Data Collection**
   - Process 10,000+ diverse transactions through optimized pipeline
   - Focus on collecting edge cases and challenging examples
   - Build comprehensive merchant alias and pattern library
   - Validate ground truth through multiple verification sources

2. **Model Training Preparation**
   - Structure training data for BERT/transformer model training
   - Create balanced datasets across categories and merchant types
   - Split data appropriately for training/validation/test sets
   - Document data collection methodology and quality metrics

3. **Transition Pathway Validation**
   - Train initial BERT model on collected dataset
   - Compare BERT model accuracy to Claude.ai on holdout test set
   - Analyze performance gaps and additional training data needs
   - Calculate economics of local model vs. continued LLM usage

## Training Data Collection Strategy

The core objective is building a high-quality labeled dataset that demonstrates merchant enrichment accuracy without vendor lock-in, ultimately training cost-effective local models.

### Dataset Building Approach
- **Quality over quantity**: Focus on diverse, well-labeled examples
- **Progressive complexity**: Start with common patterns, expand to edge cases  
- **Validation rigor**: Multiple verification sources for ground truth
- **Model readiness**: Structure data for efficient BERT/transformer training

## Testing & Validation Framework

### Test Dataset Composition
**Total Volume**: 500 transactions (Week 1) → 2,000 (Week 3) → 5,000+ (Week 4)

**Merchant Distribution:**
- **Tier 1 (40%)**: Major brands (McDonald's, ANZ, Countdown)
- **Tier 2 (40%)**: Local/regional businesses 
- **Tier 3 (20%)**: Long-tail merchants and edge cases

**Transaction Types:**
- POS/Card transactions (60%)
- Online payments (25%) 
- Direct debits/transfers (10%)
- ATM withdrawals (5%)

**Geographic Coverage:**
- Auckland metro (40%)
- Wellington/Christchurch (30%)
- Regional centers (20%)
- Rural areas (10%)

### Accuracy Measurement Methodology

#### Ground Truth Creation
1. **Triple verification**: 3 independent human labelers
2. **External validation**: Cross-check with NZBN/Google Places
3. **Consensus building**: Resolve discrepancies through discussion
4. **Confidence tracking**: Mark uncertain cases for exclusion

#### Evaluation Metrics
```
Merchant Identification:
- Exact name match accuracy
- Fuzzy match accuracy (Jaro-Winkler >0.8)
- Brand recognition accuracy

Transaction Categorization:
- Primary category accuracy (10-15 categories)
- Detailed category accuracy (50+ categories)  
- MCC code prediction accuracy

Combined Metrics:
- Overall enrichment accuracy
- Confidence calibration accuracy
- Processing speed and cost per transaction
```

## Risk Mitigation

### Technical Risks
**Risk**: Claude.ai API costs exceed budget due to inefficient screening
- **Mitigation**: Aggressive screening optimization, 80% target for Tier 1-2 processing
- **Budget**: $50-150/month for POC phase (reduced from $200-500 with screening)

**Risk**: Screening filters out merchants that need LLM processing
- **Mitigation**: Conservative confidence thresholds, comprehensive pattern testing
- **Monitoring**: Track false positive rates and adjust screening rules

**Risk**: Accuracy degradation from over-aggressive screening
- **Mitigation**: Validate screening decisions against ground truth dataset
- **Fallback**: Lower screening thresholds if accuracy drops below targets

### Business Risks
**Risk**: Training dataset insufficient for viable local model
- **Mitigation**: Focus on data quality and diversity, expand collection timeline if needed
- **Validation**: Regular BERT model training tests throughout collection process

**Risk**: Local model accuracy significantly below Claude.ai performance
- **Mitigation**: Iterative model improvement, additional training data collection
- **Fallback**: Hybrid approach using local model + Claude.ai for edge cases

**Risk**: Economics don't prove vendor independence viability
- **Mitigation**: Clear cost tracking and ROI analysis throughout POC
- **Evidence**: Document all assumptions and validate against market alternatives

## Success Metrics & KPIs

### Technical KPIs
- **Accuracy**: Meet or exceed target ranges for each phase
- **Screening efficiency**: 80% of transactions processed in Tiers 1-2 (0 tokens)
- **Cost efficiency**: <$0.02 per transaction (80% cost reduction vs. all-LLM)
- **Processing speed**: <2 seconds per batch of 20 transactions (including screening)
- **Confidence calibration**: 90%+ accuracy within predicted confidence bands
- **Token usage optimization**: <500 tokens per complex transaction requiring Claude.ai

### Business KPIs  
- **Vendor independence**: Achieve target accuracy without third-party enrichment APIs
- **Training data value**: 10,000+ high-quality labeled examples for model training
- **Economic proof**: Clear path to <$0.01 per transaction with local models
- **Market differentiation**: Proprietary NZ merchant dataset and classification approach
- **Technical feasibility**: Successful BERT model deployment matching Claude.ai accuracy

## Next Steps & Scaling Plan

### Immediate (Post-POC)
1. **Local model optimization**: Fine-tune BERT model on collected training data
2. **Training data expansion**: Scale collection to 50,000+ labeled examples
3. **Model deployment**: Productionize local model for cost-effective processing
4. **Performance validation**: Prove local model matches commercial API accuracy

### Medium-term (3-6 months)
1. **Advanced model development**: Experiment with domain-specific transformer architectures
2. **Dataset commercialization**: License proprietary NZ merchant dataset
3. **Processing optimization**: Achieve <$0.005 per transaction costs
4. **Market expansion**: Extend training data collection to Australian patterns

### Long-term (6-12 months)
1. **Model-as-a-service**: Offer independent enrichment alternative to market
2. **Data syndication**: Build recurring revenue from proprietary merchant dataset
3. **Advanced capabilities**: Add fraud detection, spending insights, cash flow analysis
4. **Platform strategy**: Enable other fintechs to avoid vendor lock-in with enrichment APIs

This POC plan provides a clear path to validate merchant enrichment accuracy using Claude.ai while building toward a scalable, production-ready solution tailored for the New Zealand market.