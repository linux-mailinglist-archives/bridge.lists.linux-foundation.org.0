Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75ADA569FD8
	for <lists.bridge@lfdr.de>; Thu,  7 Jul 2022 12:28:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1BE883F3F;
	Thu,  7 Jul 2022 10:28:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1BE883F3F
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=RAHhsOx1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B3LkWO_CJdTZ; Thu,  7 Jul 2022 10:28:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 040B58301F;
	Thu,  7 Jul 2022 10:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 040B58301F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 972B7C007D;
	Thu,  7 Jul 2022 10:28:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D639EC002D
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 10:28:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BEA19419B8
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 10:28:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEA19419B8
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=RAHhsOx1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PvbKh7QXKJF6 for <bridge@lists.linux-foundation.org>;
 Thu,  7 Jul 2022 10:28:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7688340257
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7688340257
 for <bridge@lists.linux-foundation.org>; Thu,  7 Jul 2022 10:28:41 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id x10so15205636edd.13
 for <bridge@lists.linux-foundation.org>; Thu, 07 Jul 2022 03:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=u0grqM27ho+H910v/3h5J9J38TRWwOJg//0S3hrINWs=;
 b=RAHhsOx1WYQmtl8aJ9hOVmvAwZIviDcDLPraefIX34HzrYSnbauWDMc+Yqo+BVLdyh
 LwEkKsAOts4gLXgoy0A5iOrymg2gs/8WKzG2XOUYQacJh7ZdBXH6foa22vJkKzlvTZ5b
 +DsCgmj+L9EPE8C+/JsopzQ1mCFxOvPnxps0Y7d1C0nrdCcIuEAf4dg/bQypJGb8cboP
 HN6YdHbnv4keOK8vrE2+S4MAPTglkdBFoO7FtPj2XJc6mhCLwotN1ZXOqYPY/h1GSvUz
 GtmZo0ghamPkXVVsyRA88+po3U/bJecBzDVDnN7H2rfb83us2v18GQdwvgdqEiVjQ2e9
 C4xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=u0grqM27ho+H910v/3h5J9J38TRWwOJg//0S3hrINWs=;
 b=tZ29CkrPXfbWt01OWWitCFBhQvPr6EFD70ca+TtX6weJyJjDVAEzHkW+M8XUgrvi9Y
 d3HNDvG76YUCfCKurziROjRhaG0YHOZqYOCyv0V0clvfk21mUOcqc8+39I80hOFHoaLs
 zF5NYmM1wTy6O4nyhX1XvoxMkScUMVclQOfLFXkeD4Kn9AREXbKzbn2d96vi5hga1KV9
 Nqgw+BqWyv/C3YPMUAP3mJT4K0fnrfUk9S46QNnYgKF8jRNU9F5qUuIUjC3RUmHGavYT
 7TJmcvwFbqClrSI71mGwUbu+unHnocX6rXeps9KhOJGVvH0LuFsJvZwJ+gA92nPIKWQz
 CfsA==
X-Gm-Message-State: AJIora/gRpxkKxaGR2tFj+xFa5kVR4aoQ4sJpVvYUvZKocbPbRtKA8r5
 QzeNcGkyN6DXLqwjpln6CVo=
X-Google-Smtp-Source: AGRyM1t2CpvNY/yKG03SEm6y8oh/fn77inxA2FFCz8Ec+X+79ad5SkuvvkcbR9VjQvnkdsn3aZ3OPA==
X-Received: by 2002:aa7:d702:0:b0:43a:5296:df67 with SMTP id
 t2-20020aa7d702000000b0043a5296df67mr28891799edq.314.1657189719583; 
 Thu, 07 Jul 2022 03:28:39 -0700 (PDT)
Received: from skbuf ([188.25.231.143]) by smtp.gmail.com with ESMTPSA id
 f15-20020a1709062c4f00b007081282cbd8sm18701117ejh.76.2022.07.07.03.28.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jul 2022 03:28:38 -0700 (PDT)
Date: Thu, 7 Jul 2022 13:28:36 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans Schultz <netdev@kapio-technology.com>
Message-ID: <20220707102836.u7ig6rr2664mcrlf@skbuf>
References: <20220706122502.1521819-1-netdev@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220706122502.1521819-1-netdev@kapio-technology.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/1] net: dsa: mv88e6xxx: allow
 reading FID when handling ATU violations
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

On Wed, Jul 06, 2022 at 02:25:02PM +0200, Hans Schultz wrote:
> For convenience the function mv88e6xxx_g1_atu_op() has been used to read
> ATU violations, but the function has other purposes and does not enable
> the possibility to read the FID when reading ATU violations.
> 
> The FID is needed to get hold of which VID was involved in the violation,
> thus the need for future purposes to be able to read the FID.

Make no mistake, the existing code doesn't disallow reading back the FID
during an ATU Get/Clear Violation operation, and your patch isn't
"allowing" something that wasn't disallowed.

The documentation for the ATU FID register says that its contents is
ignored before the operation starts, and it contains the returned ATU
entry's FID after the operation completes.

So the change simply says: don't bother to write the ATU FID register
with zero, it doesn't matter what this contains. This is probably true,
but the patch needs to do what's written on the box.

Please note that this only even matters at all for switches with
mv88e6xxx_num_databases(chip) > 256, where MV88E6352_G1_ATU_FID is a
dedicated register which this patch avoids writing. For other switches,
the FID is embedded within MV88E6XXX_G1_ATU_CTL or MV88E6XXX_G1_ATU_OP.
So _practically_, for those switches, you are still emitting the
GET_CLR_VIOLATION ATU op with a FID of 0 whether you like it or not, and
this patch introduces a (most likely irrelevant) discrepancy between the
access methods for various switches.

Please note that this observation is relevant for your future changes to
read back the FID too. As I said here:
https://patchwork.kernel.org/project/netdevbpf/patch/20220524152144.40527-4-schultz.hans+netdev@gmail.com/#24912482
you can't just assume that the FID lies within the MV88E6352_G1_ATU_FID
register, just look at the way it is packed within mv88e6xxx_g1_atu_op().
You'll need to unpack it in the same way.
