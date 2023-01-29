Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 113F867FE10
	for <lists.bridge@lfdr.de>; Sun, 29 Jan 2023 11:10:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B39C81A5F;
	Sun, 29 Jan 2023 10:10:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B39C81A5F
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=5rhHSPdo
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G_f8_C3plqsM; Sun, 29 Jan 2023 10:10:30 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id AE52D81A58;
	Sun, 29 Jan 2023 10:10:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE52D81A58
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 13D9EC007C;
	Sun, 29 Jan 2023 10:10:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0502AC002B
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:10:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6605814BA
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6605814BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vgIRUGsxgT36 for <bridge@lists.linux-foundation.org>;
 Sun, 29 Jan 2023 10:10:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86DC6813D8
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 86DC6813D8
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 10:10:25 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id y19so8370355edc.2
 for <bridge@lists.linux-foundation.org>; Sun, 29 Jan 2023 02:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9XfzzI0aJv3Oy+nsDPy+TYtpW6ng2Irz9hGaMbx6s3M=;
 b=5rhHSPdoK0FJ67VKVFj4aFRHClNSijowYb9fWpJW4uJ68ApzouzjidnMg3ri3TJjgR
 AvUhX2TFYEBy0Cvgu4B4hI/MTBl7BHWx4nf60ae5M6cjCIXKbDbA9itdkc7t1vx+/jJS
 vCIMuXA6tJGEIEKZ9afWTbSJM6igKlg/E4njTvoJEvhWAPyhZCWEm6dPlMfeJ/OTEZek
 Hrw1z0SYsCuZohYRB4Kr4wY5eo/30rkvHOR8vuCIFIBfvc4vLR9bwTtCBvhJU3WGdSl7
 U8vaIBoDFokDorDz744nvY6yzYKzH0GNNG8C1CwuS6UXj9ONUAe9/51w+IOX3gmHq3Bm
 +sDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9XfzzI0aJv3Oy+nsDPy+TYtpW6ng2Irz9hGaMbx6s3M=;
 b=dUJO9VIsGMUdQ4/0LLtvg1y47+76QoTwmagvmCl2uEC78WwhKJXz6obAzMNjaOnMcG
 Wa1BtORmAp5UwvfQeaYTVijc4tg3iJ7JATd6LpkfRnGMgaszzuPFBOtnWnuVjq71XMli
 6upgEVzxgpuYYOCzBWzSwv3hwutBXsrEzftLdFLmgPMk2eXFOov1ZRm/JR9EulxQAch+
 vNLPlXEzTB2GYU8XxkT4cEpFxpPWRP918vFtuqyxVJx9vzYoO2It4uwlqdg5olHjP3F2
 hx16JA04G9RECxuUJ5IEkA0RqoDiLlNmbIo1MtwY9L6P8B1lOsiHVtXdOAPvxwm1WtGz
 vRZA==
X-Gm-Message-State: AFqh2krIZ4cYbjiLUve1/4WRi2wi3RzliURa0x3YRSsGOBiNb95F7QUJ
 qNfMG8OacNy5SnUwMwDR/vw1xA==
X-Google-Smtp-Source: AMrXdXsxXpdFSn35m1OrWYjxgXxHBpPbStsUS+CGsQVTPJ3TOYBUTJGesCZF4/Tt26z1K4i5aa+Ztw==
X-Received: by 2002:a50:fe95:0:b0:46c:aa8b:da5c with SMTP id
 d21-20020a50fe95000000b0046caa8bda5cmr45548336edt.33.1674987023716; 
 Sun, 29 Jan 2023 02:10:23 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 m5-20020aa7c485000000b0049e19136c22sm5031173edq.95.2023.01.29.02.10.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Jan 2023 02:10:23 -0800 (PST)
Message-ID: <dbcb7016-2473-0586-b6e2-2a42fca2b7f7@blackwall.org>
Date: Sun, 29 Jan 2023 12:10:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1674752051.git.petrm@nvidia.com>
 <3ca0fe4de1f701befbc874e4b672c90aee602199.1674752051.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <3ca0fe4de1f701befbc874e4b672c90aee602199.1674752051.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next 12/16] selftests: forwarding: lib: Add
 helpers for checksum handling
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

On 26/01/2023 19:01, Petr Machata wrote:
> In order to generate IGMPv3 and MLDv2 packets on the fly, we will need
> helpers to calculate the packet checksum.
> 
> The approach presented in this patch revolves around payload templates
> for mausezahn. These are mausezahn-like payload strings (01:23:45:...)
> with possibly one 2-byte sequence replaced with the word PAYLOAD. The
> main function is payload_template_calc_checksum(), which calculates
> RFC 1071 checksum of the message. There are further helpers to then
> convert the checksum to the payload format, and to expand it.
> 
> For IPv6, MLDv2 message checksum is computed using a pseudoheader that
> differs from the header used in the payload itself. The fact that the
> two messages are different means that the checksum needs to be
> returned as a separate quantity, instead of being expanded in-place in
> the payload itself. Furthermore, the pseudoheader includes a length of
> the message. Much like the checksum, this needs to be expanded in
> mausezahn format. And likewise for number of addresses for (S,G)
> entries. Thus we have several places where a computed quantity needs
> to be presented in the payload format. Add a helper u16_to_bytes(),
> which will be used in all these cases.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---
>  tools/testing/selftests/net/forwarding/lib.sh | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


