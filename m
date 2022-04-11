Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F474FC39C
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 19:43:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52A5C82AF5;
	Mon, 11 Apr 2022 17:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id djyKgtAsQFXK; Mon, 11 Apr 2022 17:42:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E0A52813C2;
	Mon, 11 Apr 2022 17:42:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 88871C0084;
	Mon, 11 Apr 2022 17:42:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5939AC002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:42:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40DEE41548
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id igpSfSh0KLuB for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 17:42:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1606541525
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 17:42:54 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id s18so9949152ejr.0
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 10:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=Qn0m42DURCvgyA+3fQ3KmY2jO1hPwl7SsCJTQkfJV1s=;
 b=hMkj2kvMUd7imAmQLdIxKRb5Y6stYgX2688k9Otvb5DuBuGpKEVIzX2kLC0il0bbuC
 Dxg8JbTm4UWxbe/cvYxUsKKiAq9QEEvmvHMKr7WnRrnIEf3kz9qvX1sPKAQW45TVLtuo
 fP7XB81maT1NwKW4v3GZ+j2t29xaKL8mD/u4X7aMrGAfrSiz9ha6Mv5ywKLv3sRWrOyq
 Ou/uXdcDhayTAVeJLZkyHql3VVGDXBNGZ4O2vP9fb5SxgaI9qXBg1noS+UbhEC+UQKF8
 PMw3KVI33DheavQ7MDCthvZxpI4Q1hV0sKBug/5/3H5tSnyZVIXZ+fzHE7oAlN120maL
 6/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Qn0m42DURCvgyA+3fQ3KmY2jO1hPwl7SsCJTQkfJV1s=;
 b=IeuKvYHXTtItGAIxebSnW94xx4xxc8UL9ij9QAMM20QX+Md30dtcF8B9To13+g5pen
 lyfvFmtv1sUUKOSxioeABHkeWvFp1U6JtRKSf0hs3hV747xPsHcRK6Z96FjNgArMinp+
 LbgL69mxd2psTIYaiIZISKETtYHB2wHKpJbEbhX6OLLDam2qM0OypFM9EJsDVcuWVZWf
 Sw4psQg5ZZwTOXZMiM7fLVekxGgaFsrXqhJ2xX8yE9fjrBYv5s8V2RThQTzDMFOirW91
 a7YgnWpJYelWCfpTMzcd1dRGGiLqV2hLvjUCSgNbuOm7pyjZH2bVtbGsOY5NsN5Z10m0
 GiYw==
X-Gm-Message-State: AOAM530rkxXtrlZ5+hhN8XXQVBDalYCvL2XuRhjOnV4s3+srAbbSTgIn
 0N1obZe0HNiZya6sudOztwNztQ==
X-Google-Smtp-Source: ABdhPJxSlTBZucy+uuY8OR6pUuEslmh0PoObVjfwbfegrQwnWuOG8zmj7amgAJNB0D2XbOJZxJefjA==
X-Received: by 2002:a17:907:7f1b:b0:6e8:558c:5ba with SMTP id
 qf27-20020a1709077f1b00b006e8558c05bamr15442310ejc.522.1649698973189; 
 Mon, 11 Apr 2022 10:42:53 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 sh31-20020a1709076e9f00b006e8289e5836sm5977052ejc.117.2022.04.11.10.42.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Apr 2022 10:42:52 -0700 (PDT)
Message-ID: <e3655cbf-5b8f-85d1-cd5f-80df739d79f4@blackwall.org>
Date: Mon, 11 Apr 2022 20:42:51 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: netdev@vger.kernel.org
References: <20220411172934.1813604-1-razor@blackwall.org>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20220411172934.1813604-1-razor@blackwall.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: idosch@idosch.org, bridge@lists.linux-foundation.org, davem@davemloft.net,
 kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v2 0/8] net: bridge: add flush
	filtering support
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

On 11/04/2022 20:29, Nikolay Aleksandrov wrote:
> Hi,
> This patch-set adds support to specify filtering conditions for a flush
> operation. This version has entirely different entry point (v1 had
> bridge-specific IFLA attribute, here I add new RTM_FLUSHNEIGH msg and
> netdev ndo_fdb_flush op) so I'll give a new overview altogether.
> After me and Ido discussed the feature offlist, we agreed that it would
> be best to add a new generic RTM_FLUSHNEIGH with a new ndo_fdb_flush
> callback which can be re-used for other drivers (e.g. vxlan).
> Patch 01 adds the new RTM_FLUSHNEIGH type, patch 02 then adds the
> new ndo_fdb_flush call. With this structure we need to add a generic
> rtnl_fdb_flush which will be used to do basic attribute validation and
> dispatch the call to the appropriate device based on the NTF_USE/MASTER
> flags (patch 03). Patch 04 then adds some common flush attributes which
> are used by the bridge and vxlan drivers (target ifindex, vlan id, ndm
> flags/state masks) with basic attribute validation, further validation
> can be done by the implementers of the ndo callback. Patch 05 adds a
> minimal ndo_fdb_flush to the bridge driver, it uses the current
> br_fdb_flush implementation to flush all entries similar to existing
> calls. Patch 06 adds filtering support to the new bridge flush op which
> supports target ifindex (port or bridge), vlan id and flags/state mask.
> Patch 07 converts ndm state/flags and their masks to bridge-private flags
> and fills them in the filter descriptor for matching. Finally patch 08

Aargh.. I mixed up the patch numbers above. Patch 03 adds the minimal ndo_fdb_flush
to the bridge driver (not patch 05), patch 04 adds the generic rtnl_fdb_flush
(not patch 03) and patch 05 adds the common attributes (not patch 04).

Let me know if you'd like me to repost it with fixed numbers. I'll wait for
feedback anyway.

> fills in the target ifindex (after validating it) and vlan id (already
> validated by rtnl_fdb_flush) for matching. Flush filtering is needed> because user-space applications need a quick way to delete only a
> specific set of entries, e.g. mlag implementations need a way to flush only
> dynamic entries excluding externally learned ones or only externally
> learned ones without static entries etc. Also apps usually want to target
> only a specific vlan or port/vlan combination. The current 2 flush
> operations (per port and bridge-wide) are not extensible and cannot
> provide such filtering.



