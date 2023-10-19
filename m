Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC89E7CFA8B
	for <lists.bridge@lfdr.de>; Thu, 19 Oct 2023 15:12:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7D636FB64;
	Thu, 19 Oct 2023 13:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7D636FB64
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=aciUkdUT
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xw2dH1mhb7Kw; Thu, 19 Oct 2023 13:12:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id DD7D06FB4A;
	Thu, 19 Oct 2023 13:12:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD7D06FB4A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 86C7FC0DD3;
	Thu, 19 Oct 2023 13:12:37 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BAAE9C0032
 for <bridge@lists.linux-foundation.org>; Thu, 19 Oct 2023 13:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8746C401F1
 for <bridge@lists.linux-foundation.org>; Thu, 19 Oct 2023 13:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8746C401F1
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=aciUkdUT
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X0fYc-K41Xt2 for <bridge@lists.linux-foundation.org>;
 Thu, 19 Oct 2023 13:12:34 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DEE1040190
 for <bridge@lists.linux-foundation.org>; Thu, 19 Oct 2023 13:12:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEE1040190
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-32dc918d454so1999828f8f.2
 for <bridge@lists.linux-foundation.org>; Thu, 19 Oct 2023 06:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697721152; x=1698325952;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=v1QQy/TzuYABfNuKOiHX44LqVgl9CKlKEp054v57jP8=;
 b=aciUkdUT0uWZj8zKG2uV58j7JgqgHKl0Qs3dFlsYbsxAmfRH8TzaBJHJEbTlU17ILF
 qTL5ldejPjGdqtliNf/XzA9DovA5rFknNLtLnOA+D49Nxthl+2nz1wapZQbvS/p0u9Vc
 uaeobLN55mTE2/vG8I/oUzw3lKLCn4dyTkEZreDcHSFDs1TdO5wsxwg136h0GjU+luqB
 1YQJSQve9MWcH3MNw7KxwtWrV7icnqy/cnaMJxGOJN0uu2axmkXHn6CrnuYknOyChXzF
 Sr1fHvXO3DlMC+l43xxib+ixD5rV+efOCGi9JctZKfQJOjF/TCFSGbeF6Gn2Rv+5jiyN
 WVow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697721152; x=1698325952;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=v1QQy/TzuYABfNuKOiHX44LqVgl9CKlKEp054v57jP8=;
 b=s0M6A6rtxWSZk6jqkGv5V2Yl/yaDgld7ptovwl0GBkw6vcP3aPA2Cf+Sp7jN5T5XJW
 2QkpUCFOqwY82hPys3M78k0CLL0kh+0B+k0n7VIRxtFwHyTDRRxt714X2i6nE5OjyrpF
 FZzPlIOx19n9Z/pzY05AQwoKYuTnGweq2X5UvaoesSduhqpFACRp3ojhefJSqV4wUgt1
 Brs66FaetoNAEV0XA2DkdjYG5fd6dG1nM5m8pEcT0zAKkQ/kUnD3YZ2jWarxOe1f1tnS
 Ycy79qohMbC5TZtuHBZmgai8jp/59OHx/IMOglzm1rZNQSp+icvA7R4QTvBEc7UT3JS4
 AsYg==
X-Gm-Message-State: AOJu0Yz6gSdBuz/0HNQvMGuC6MdNbXyozM2TfUjCSJpRl9t+AB28oUwm
 ezJVOkNXqBS7+EJ/cb1qJmw/ig==
X-Google-Smtp-Source: AGHT+IFexvu64+meSkENrUA+zLK1LPB2h7F55aVILI31rqt8hwPhK57eKqM4fL7YoWVbrjtBB7nRvQ==
X-Received: by 2002:a05:6000:1112:b0:32d:8958:c570 with SMTP id
 z18-20020a056000111200b0032d8958c570mr1674797wrw.29.1697721151677; 
 Thu, 19 Oct 2023 06:12:31 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 d15-20020adfef8f000000b003231ca246b6sm4472800wro.95.2023.10.19.06.12.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Oct 2023 06:12:31 -0700 (PDT)
Message-ID: <632c55ba-9adb-8afb-3558-94ea5f0168f8@blackwall.org>
Date: Thu, 19 Oct 2023 16:12:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Johannes Nixdorf <jnixdorf-oss@avm.de>, David Ahern <dsahern@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 Petr Machata <petrm@nvidia.com>
References: <20231018-fdb_limit-v5-1-7ca3b3eb7c1f@avm.de>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231018-fdb_limit-v5-1-7ca3b3eb7c1f@avm.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH iproute2-next v5] iplink: bridge: Add support
 for bridge FDB learning limits
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On 10/18/23 10:04, Johannes Nixdorf wrote:
> Support setting the FDB limit through ip link. The arguments is:
>   - fdb_max_learned: A 32-bit unsigned integer specifying the maximum
>                      number of learned FDB entries, with 0 disabling
>                      the limit.
> 
> Also support reading back the current number of learned FDB entries in
> the bridge by this count. The returned value's name is:
>   - fdb_n_learned: A 32-bit unsigned integer specifying the current number
>                    of learned FDB entries.
> 
> Example:
> 
>   # ip -d -j -p link show br0
> [ {
> ...
>          "linkinfo": {
>              "info_kind": "bridge",
>              "info_data": {
> ...
>                  "fdb_n_learned": 2,
>                  "fdb_max_learned": 0,
> ...
>              }
>          },
> ...
>      } ]
>   # ip link set br0 type bridge fdb_max_learned 1024
>   # ip -d -j -p link show br0
> [ {
> ...
>          "linkinfo": {
>              "info_kind": "bridge",
>              "info_data": {
> ...
>                  "fdb_n_learned": 2,
>                  "fdb_max_learned": 1024,
> ...
>              }
>          },
> ...
>      } ]
> 
> Signed-off-by: Johannes Nixdorf <jnixdorf-oss@avm.de>
> ---
> The corresponding kernel changes are in net-next.git as commit
> ddd1ad68826d ("net: bridge: Add netlink knobs for number / max learned
> FDB entries").
> ---
> Changes in v5:
>   - Removed the RFC status again, as the kernel changes landed.
>   - Link to v4: https://lore.kernel.org/r/20230919-fdb_limit-v4-1-b4d2dc4df30f@avm.de
> 
> Changes in v4:
>   - Removed _entries from the names. (from review)
>   - Removed the UAPI change, to be synced from linux separately by the
>     maintainer. (from review)
>     For local testing e.g. `make CCOPTS="-O2 -pipe
>     -I${path_to_dev_kernel_headers}"` works as a workaround.
>   - Downgraded to an RFC until the kernel changes land.
>   - Link to v3: https://lore.kernel.org/netdev/20230905-fdb_limit-v3-1-34bb124556d8@avm.de/
> 
> Changes in v3:
>   - Properly split the net-next and iproute2-next threads. (from review)
>   - Changed to *_n_* instead of *_cur_*. (from review)
>   - Use strcmp() instead of matches(). (from review)
>   - Made names in code and documentation consistent. (from review)
>   - Various documentation fixes. (from review)
>   - Link to v2: https://lore.kernel.org/netdev/20230619071444.14625-1-jnixdorf-oss@avm.de/
> 
> Changes in v2:
>   - Sent out the first corresponding iproute2 patches.
>   - Link to v1: https://lore.kernel.org/netdev/20230515085046.4457-1-jnixdorf-oss@avm.de/
> ---
>   ip/iplink_bridge.c    | 21 +++++++++++++++++++++
>   man/man8/ip-link.8.in | 10 ++++++++++
>   2 files changed, 31 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


