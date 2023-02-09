Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4EA69020B
	for <lists.bridge@lfdr.de>; Thu,  9 Feb 2023 09:23:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2962640B57;
	Thu,  9 Feb 2023 08:23:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2962640B57
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=k6+kCU7w
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gSsJ2gjf8ABP; Thu,  9 Feb 2023 08:23:21 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id B56C940B75;
	Thu,  9 Feb 2023 08:23:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B56C940B75
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5B5BEC007C;
	Thu,  9 Feb 2023 08:23:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8305BC002B
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 08:23:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56C456108E
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 08:23:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56C456108E
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=k6+kCU7w
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o9QJtqpIQN7G for <bridge@lists.linux-foundation.org>;
 Thu,  9 Feb 2023 08:23:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BAB160C2E
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8BAB160C2E
 for <bridge@lists.linux-foundation.org>; Thu,  9 Feb 2023 08:23:17 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id ud5so4042726ejc.4
 for <bridge@lists.linux-foundation.org>; Thu, 09 Feb 2023 00:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Ugqkr++siywh0swN5b9286pA9cKNm4n0gVMoeMdXOso=;
 b=k6+kCU7weQ3pg25j9OzluTM+hBa1YxXA6LqP1Vx0jd64QJ8TLo5IotmNhoS0o4iQw7
 kuJqLAxev3Bp8iWR/BXjDsesNGO+r8zJ+vV5wtTkseRPEH87c7jj8nv1yKYJNI8dzfNw
 mo8OzNITn0q26EG0ZMADQwbHOvUuIYopaCTiEqbY4hnwO1Dpj9MUtu+Yb4PZLuENRvBo
 JvgKW/ZjX3O9Nd3b506bNQD0lsKnobsWyFAQP5XgKrrd4m3u5uH/sDmVJ1sVj8YFx3eF
 Hrcpr1+uuLvk0vrAGZr6t0xLsilw5/gx3XazOgpWN1WnjCoc0t5Fa/rQLIPbTfe+B9Zw
 +Z2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Ugqkr++siywh0swN5b9286pA9cKNm4n0gVMoeMdXOso=;
 b=v1TKhKrUxQJW2Kd306os+bm6ipaYJrAIW25/keko2ob+Xm4AOgoTDYF+wPtYMW3XLG
 tPoxFMHErFtNbdg/zUSM/eFMZ3qKbhJ8/tD1QVv0cT4LuipiCMJh3uDg1y6zBuAgj6eh
 8NPd48st15dO4V1vjKqaYjGJorgz6KCXepPnyPN9wcAj1TYg1zMb4jycwAd03vcpI+T2
 rIahZeTaKal+lYqqE6b1GWnEITkOjfTd+KljG5RlwV5ahHjeQqYuFpT+5KeN0rRixXsQ
 bQq0oUnLAi206dRk6h6IeHGP5MUxcxMFZyPXfpsqfaghh6ao1kS7mxM+fqQEnAbUN21I
 8KkA==
X-Gm-Message-State: AO0yUKXCfKM4PlfIkmoODt7wtlUJFO/oZLwYneowqBElyBcUVLfy8RTx
 3AqMxVKqrPnkqhuXlmvHZb+vzQ==
X-Google-Smtp-Source: AK7set+QfkYQ9XGxnLIQkgqJcjbxcTmsrU35IJsn2f4fUZd/7fSK2C5U/kVdtbkNAXyH84Cl/HXJfA==
X-Received: by 2002:a17:907:7e94:b0:85d:dd20:60a4 with SMTP id
 qb20-20020a1709077e9400b0085ddd2060a4mr15021836ejc.40.1675930995725; 
 Thu, 09 Feb 2023 00:23:15 -0800 (PST)
Received: from [192.168.100.228] (212-147-51-13.fix.access.vtx.ch.
 [212.147.51.13]) by smtp.gmail.com with ESMTPSA id
 j4-20020a170906474400b008aac143d9afsm565790ejs.58.2023.02.09.00.23.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Feb 2023 00:23:15 -0800 (PST)
Message-ID: <b5bc02cc-8c81-a4a3-8850-40cb6a4a0600@blackwall.org>
Date: Thu, 9 Feb 2023 09:23:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230209071852.613102-1-idosch@nvidia.com>
 <20230209071852.613102-4-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230209071852.613102-4-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/4] bridge: mcast: Move validation to
	a policy
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

On 2/9/23 09:18, Ido Schimmel wrote:
> Future patches are going to move parts of the bridge MDB code to the
> common rtnetlink code in preparation for VXLAN MDB support. To
> facilitate code sharing between both drivers, move the validation of the
> top level attributes in RTM_{NEW,DEL}MDB messages to a policy that will
> eventually be moved to the rtnetlink code.
> 
> Use 'NLA_NESTED' for 'MDBA_SET_ENTRY_ATTRS' instead of
> NLA_POLICY_NESTED() as this attribute is going to be validated using
> different policies in the underlying drivers.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   net/bridge/br_mdb.c | 45 +++++++++++++++++++++++++++------------------
>   1 file changed, 27 insertions(+), 18 deletions(-)
> 


Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


