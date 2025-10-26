<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\PaymentWebhooks\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Bez logiky; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class PaymentWebhookDto {
    public function __construct(
        public readonly ?int $id,
        public readonly ?int $paymentId,
        public readonly ?string $gatewayEventId,
        public readonly string $payloadHash,
        public readonly array|null $payload,
        public readonly bool $fromCache,
        public readonly \DateTimeImmutable $createdAt
    ) {}

    /** Vhodné pro serializaci/logování (bez velkých blobů). */
    public function toArray(): array {
        return get_object_vars($this);
    }
}
